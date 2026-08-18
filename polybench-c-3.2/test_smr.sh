#!/bin/bash

PAT=$1
LOG="smr_test_log.txt"

if [ -z "$PAT" ]; then
    echo "Error: Please provide the .pat file as an argument."
    exit 1
fi

# Export the current directory for header search
export CPATH=$CPATH:.

echo "=== SMR Test: $(date) ===" > $LOG

# -------------------------------------------------------------------------

# FLOATING-POINT COMPARATOR

# Creates a quick Python script to compare numerical outputs while ignoring
# small rounding variations (e.g., 1.000001 vs 1.000002)

# -------------------------------------------------------------------------

cat << 'EOF' > compare_floats.py
import sys, math

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
            n1, n2 = float(v1), float(v2)

            # Check whether the numbers are sufficiently close
            if not math.isclose(n1, n2, rel_tol=rel_tol, abs_tol=abs_tol):
                return False

        except ValueError:
            # If not a number (e.g., NaN or plain text), compare as strings
            if v1 != v2:
                return False

    # Check whether f2 still contains extra data
    try:
        next(t2)
        return False
    except StopIteration:
        pass

    return True

if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit(1)

    # Return exit code 0 (success) or 1 (failure) to Bash
    sys.exit(0 if compare(sys.argv[1], sys.argv[2]) else 1)
EOF

# -------------------------------------------------------------------------

# Compile the fixed PolyBench utility with timing support

clang -O3 -I utilities -DPOLYBENCH_TIME -c utilities/polybench.c -o polybench.o 2>> $LOG

for BENCH_FILE in $(cat utilities/benchmark_list); do
    B_DIR=$(dirname "$BENCH_FILE")
    B_NAME=$(basename "$BENCH_FILE" .c)

    echo "----------------------------------------" | tee -a $LOG
    echo "Processing: $B_NAME" | tee -a $LOG

    # 1. Prepare temporary C file (Inject timing and array dump macros)
    echo "#define POLYBENCH_TIME 1" > "tmp_$B_NAME.c"
    echo "#define POLYBENCH_DUMP_ARRAYS 1" >> "tmp_$B_NAME.c"
    cat "$BENCH_FILE" >> "tmp_$B_NAME.c"

    # Copy headers
    cp "$B_DIR/$B_NAME.h" .
    cp "utilities/polybench.h" .

    # 2. Transform #include <header.h> into #include "header.h"
    sed -i 's/#include <\(.*\)> /#include "\1"/' "tmp_$B_NAME.c"

    # 3. Generate Baseline MLIR
    smr --compile "tmp_$B_NAME.c" >> $LOG 2>&1

    if [ -f "tmp_$B_NAME-compiled.mlir" ]; then
        mv "tmp_$B_NAME-compiled.mlir" "base.mlir"

        # 4. Try to generate Optimized MLIR
        smr "tmp_$B_NAME.c" "$PAT" -o "modified.mlir" >> $LOG 2>&1

        # Check whether a rewrite occurred and differences from the baseline were generated
        if grep -q "cblas" "modified.mlir"; then
            echo "  [INFO] Rewrite detected! Compiling for performance and correctness tests..." | tee -a $LOG

            # Lowering and Linking (Baseline)
            cir-translate --cir-to-llvmir "base.mlir" -o "base.ll" 2>> $LOG
            llc -relocation-model=pic -O3 -filetype=obj "base.ll" -o "base.o" 2>> $LOG
            clang "base.o" polybench.o -lm -o "bin_base" 2>> $LOG

            # Lowering and Linking (Optimized)
            cir-translate --cir-to-llvmir "modified.mlir" -o "modified.ll" 2>> $LOG
            llc -relocation-model=pic -O3 -filetype=obj "modified.ll" -o "modified.o" 2>> $LOG
            clang "modified.o" polybench.o -lopenblas -lm -o "bin_modified" 2>> $LOG

            # 5. Execution and Capture (Timing and Data)
            TIME_BASE=$(./bin_base 2> base_dump.txt)
            TIME_MOD=$(./bin_modified 2> mod_dump.txt)

            if [ -n "$TIME_BASE" ] && [ -n "$TIME_MOD" ]; then
                SPEEDUP=$(awk "BEGIN {print $TIME_BASE / $TIME_MOD}")

                # TOLERANT FLOATING-POINT CORRECTNESS CHECK
                if python3 compare_floats.py base_dump.txt mod_dump.txt; then
                    VALIDACAO="SUCCESS"
                else
                    VALIDACAO="FAILURE"
                fi

                echo "  [RESULT] Baseline   : ${TIME_BASE}s" | tee -a $LOG
                echo "  [RESULT] Optimized  : ${TIME_MOD}s" | tee -a $LOG
                echo "  [RESULT] Speedup    : ${SPEEDUP}x" | tee -a $LOG
                echo "  [RESULT] Validation : ${VALIDACAO}" | tee -a $LOG
            else
                echo "  [ERROR] Failed to collect execution times (empty output or segmentation fault)." | tee -a $LOG
            fi
        else
            echo "  [INFO] No changes for this benchmark (No match found or file is identical)." | tee -a $LOG
        fi
    else
        echo "  [ERROR] SMR failed to compile the Baseline. Check the log." | tee -a $LOG
    fi

    # Cleanup per iteration
    rm -f "tmp_$B_NAME.c" "$B_NAME.h" "polybench.h" "base.mlir" "modified.mlir" \
          "base.ll" "modified.ll" "base.o" "modified.o" "bin_base" "bin_modified" \
          "base_dump.txt" "mod_dump.txt"
done

# Final cleanup and local Python script
rm -f polybench.o compare_floats.py

echo "----------------------------------------" | tee -a $LOG
echo "Process completed. Summary saved to $LOG."