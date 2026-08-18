#!/bin/bash

PAT=$1
LOG="smr_fortran_test_log.txt"

if [ -z "$PAT" ]; then
    echo "Error: Please provide the .pat file as an argument."
    exit 1
fi

# Global variables extracted from your utils.sh

FIR_LIB='/root/builds/fir-build/lib'
LIB_OPENBLAS='/usr/lib/x86_64-linux-gnu/openblas-pthread/'
POLY_UTILS="utilities"

echo "=== SMR Fortran Test with Validation: $(date) ===" > $LOG

# -------------------------------------------------------------------------

# FLOATING-POINT COMPARATOR (Supports Fortran D/d format)

# -------------------------------------------------------------------------

cat << 'EOF' > compare_floats.py
import sys, math

def parse_value(token):
    # Remove common end-of-line/matrix punctuation from PolyBench dumps
    token = token.strip().rstrip(',;')

    # Convert Fortran double exponent 'D/d' to 'E/e' accepted by Python
    token_fixed = token.replace('D', 'E').replace('d', 'e')

    return float(token_fixed)

def get_tokens(filepath):
    """Reads files word by word/number by number."""
    with open(filepath, 'r') as f:
        for line in f:
            for token in line.split():
                yield token

def compare(f1, f2, rel_tol=1e-4, abs_tol=1e-5):
    t1, t2 = get_tokens(f1), get_tokens(f2)

    for v1 in t1:
        try:
            v2 = next(t2)
        except StopIteration:
            return False  # f1 contains more data than f2

        try:
            n1 = parse_value(v1)
            n2 = parse_value(v2)

            # Check whether the numbers are within tolerance
            if not math.isclose(n1, n2, rel_tol=rel_tol, abs_tol=abs_tol):
                return False

        except ValueError:
            # If not a number (e.g., NaN or fixed text), compare as strings
            if v1 != v2:
                return False

    # Check whether there is remaining data in the second dump
    try:
        next(t2)
        return False
    except StopIteration:
        pass

    return True

if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit(1)

    sys.exit(0 if compare(sys.argv[1], sys.argv[2]) else 1)
EOF

# -------------------------------------------------------------------------

# Ensure fpolybench.o is compiled with timing and array dump support

echo "[INFO] Compiling reference fpolybench.c..." | tee -a $LOG

gcc -c -O3 $POLY_UTILS/fpolybench.c \
    -o $POLY_UTILS/fpolybench.o \
    -DPOLYBENCH_TIME \
    -DPOLYBENCH_DUMP_ARRAYS \
    -DLARGE_DATASET 2>> $LOG

mkdir -p tmp

for BENCH_FILE in $(cat $POLY_UTILS/benchmark_list); do
    B_DIR=$(dirname "$BENCH_FILE")
    B_NAME=$(basename "$BENCH_FILE" .F90)
    B_NAME=$(basename "$B_NAME" .F)

    echo "----------------------------------------" | tee -a $LOG
    echo "Processing: $B_NAME" | tee -a $LOG

    # 1. Preprocess with flang -E (Enable Timing, Array Dump and Large Dataset)
    flang -I$POLY_UTILS -I"$B_DIR" "$BENCH_FILE" -E \
        -DPOLYBENCH_TIME \
        -DPOLYBENCH_DUMP_ARRAYS \
        -DLARGE_DATASET > "tmp/input_$B_NAME.f90" 2>> $LOG

    if [ ! -s "tmp/input_$B_NAME.f90" ]; then
        echo "  [ERROR] flang -E preprocessing failed." | tee -a $LOG
        continue
    fi

    # 2. FIX IARGC: Replace legacy iargc with the modern Fortran standard
    sed -i -E 's/\biargc\s*\(\s*\)/command_argument_count()/Ig' "tmp/input_$B_NAME.f90"

    # 3. Generate Baseline MLIR via bbc
    bbc "tmp/input_$B_NAME.f90" -emit-fir -o "tmp/base_$B_NAME.mlir" 2>> $LOG

    # 4. SILENT SMR CALL (All output redirected to LOG)
    smr "tmp/input_$B_NAME.f90" "$PAT" -o "tmp/modified_$B_NAME.mlir" >> $LOG 2>&1

    # Remove module_terminator if SMR generated changes
    if [ -f "tmp/modified_$B_NAME.mlir" ]; then
        sed -i "/\bmodule_terminator\b/d" "tmp/modified_$B_NAME.mlir"
    fi

    # --- COMPILATION AND LINKING: BASELINE ---
    if [ -f "tmp/base_$B_NAME.mlir" ]; then
        tco "tmp/base_$B_NAME.mlir" -o "tmp/base_$B_NAME.ll" 2>> $LOG

        llc "tmp/base_$B_NAME.ll" \
            -O3 \
            -relocation-model=pic \
            -filetype=obj \
            -o "tmp/base_$B_NAME.o" 2>> $LOG

        # Symbol redefinition for Baseline
        objcopy "tmp/base_$B_NAME.o" \
            --redefine-sym _QPpolybench_timer_start=polybench_timer_start_ \
            --redefine-sym _QPpolybench_timer_stop=polybench_timer_stop_ \
            --redefine-sym _QPpolybench_timer_print=polybench_timer_print_ 2>> $LOG

        objcopy "tmp/base_$B_NAME.o" \
            --redefine-sym _QPgetarg=polybench_timer_start_ \
            --redefine-sym _QPcheck_err=polybench_timer_stop_ 2>> $LOG

        flang "tmp/base_$B_NAME.o" \
            "./$POLY_UTILS/fpolybench.o" \
            "$LIB_OPENBLAS/libopenblas.a" \
            -lpthread -lstdc++ -lm \
            -o "bin_base" 2>> $LOG
    else
        echo "  [ERROR] bbc failed to generate the Baseline MLIR." | tee -a $LOG
        continue
    fi

    # --- COMPILATION AND LINKING: OPTIMIZED (SMR) ---
    # Check whether the file exists, contains data and actually differs
    # from the baseline MLIR
    if [ -f "tmp/modified_$B_NAME.mlir" ] && \
       [ -s "tmp/modified_$B_NAME.mlir" ] && \
       grep -q "smr_pattern" "tmp/modified_$B_NAME.mlir"; then

        echo "  [INFO] Rewrite detected! Compiling for performance and correctness tests..." | tee -a $LOG

        tco "tmp/modified_$B_NAME.mlir" \
            -o "tmp/modified_$B_NAME.ll" 2>> $LOG

        llc "tmp/modified_$B_NAME.ll" \
            -O3 \
            -relocation-model=pic \
            -filetype=obj \
            -o "tmp/modified_$B_NAME.o" 2>> $LOG

        # Symbol redefinition for Optimized version
        objcopy "tmp/modified_$B_NAME.o" \
            --redefine-sym _QPpolybench_timer_start=polybench_timer_start_ \
            --redefine-sym _QPpolybench_timer_stop=polybench_timer_stop_ \
            --redefine-sym _QPpolybench_timer_print=polybench_timer_print_ \
            --redefine-sym _QPdgemm=dgemm_ \
            --redefine-sym _QPdgemv=dgemv_ \
            --redefine-sym _QPdsymm=dsymm_ \
            --redefine-sym _QPdsyr2k=dsyr2k_ \
            --redefine-sym _QPdtrmm=dtrmm_ 2>> $LOG

        objcopy "tmp/modified_$B_NAME.o" \
            --redefine-sym _QPgetarg=polybench_timer_start_ \
            --redefine-sym _QPcheck_err=polybench_timer_stop_ 2>> $LOG

        flang "tmp/modified_$B_NAME.o" \
            "./$POLY_UTILS/fpolybench.o" \
            "$LIB_OPENBLAS/libopenblas.a" \
            -lpthread -lstdc++ -lm \
            -o "bin_modified" 2>> $LOG

        # --- 5. EXECUTION, DATA EXTRACTION AND VALIDATION ---
        # Reset temporary dump files to avoid leftover data
        rm -f fort.0 base_dump.txt mod_dump.txt stderr_base.txt stderr_mod.txt

        # Run Baseline (Timing via stdout, Dump via fort.0 or stderr)
        TIME_BASE=$(./bin_base 2> stderr_base.txt)

        if [ -f "fort.0" ]; then
            mv fort.0 base_dump.txt
            rm -f stderr_base.txt
        else
            mv stderr_base.txt base_dump.txt
        fi

        # Run Optimized
        rm -f fort.0

        TIME_MOD=$(./bin_modified 2> stderr_mod.txt)

        if [ -f "fort.0" ]; then
            mv fort.0 mod_dump.txt
            rm -f stderr_mod.txt
        else
            mv stderr_mod.txt mod_dump.txt
        fi

        # Process results
        if [ -n "$TIME_BASE" ] && [ -n "$TIME_MOD" ]; then
            SPEEDUP=$(awk "BEGIN {print $TIME_BASE / $TIME_MOD}")

            # Tolerant Mathematical Result Validation
            if python3 compare_floats.py base_dump.txt mod_dump.txt; then
                VALIDATION="SUCCESS (Mathematically equivalent results)"
            else
                VALIDATION="FAILURE (Mathematical divergence beyond the allowed tolerance!)"
            fi

            echo "  [RESULT] Baseline Time : ${TIME_BASE}s" | tee -a $LOG
            echo "  [RESULT] Optimized Time: ${TIME_MOD}s" | tee -a $LOG
            echo "  [RESULT] Speedup       : ${SPEEDUP}x" | tee -a $LOG
            echo "  [RESULT] Validation    : ${VALIDATION}" | tee -a $LOG
        else
            echo "  [ERROR] Failed to capture execution times (empty output or segmentation fault)." | tee -a $LOG
        fi
    else
        echo "  [INFO] No changes for this benchmark (No structural match found)." | tee -a $LOG
    fi

    # Cleanup per iteration
    rm -f bin_base bin_modified base_dump.txt mod_dump.txt \
          fort.0 stderr_base.txt stderr_mod.txt

    rm -rf tmp/*
done

rm -rf tmp/ compare_floats.py

echo "----------------------------------------" | tee -a $LOG
echo "Process completed. Summary saved to $LOG."