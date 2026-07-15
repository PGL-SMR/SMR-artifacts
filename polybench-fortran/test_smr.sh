#!/bin/bash

PAT=$1
LOG="smr_fortran_test_log.txt"

if [ -z "$PAT" ]; then
    echo "Erro: Forneça o arquivo .pat como argumento."
    exit 1
fi

# Variáveis globais extraídas do seu utils.sh
FIR_LIB='/root/builds/fir-build/lib'
LIB_OPENBLAS='/usr/lib/x86_64-linux-gnu/openblas-pthread/'
POLY_UTILS="utilities"

echo "=== Teste SMR Fortran Corrigido com Validação: $(date) ===" > $LOG

# -------------------------------------------------------------------------
# INJETOR DO COMPARADOR DE PONTO FLUTUANTE (Suporta formato Fortran D/d)
# -------------------------------------------------------------------------
cat << 'EOF' > compare_floats.py
import sys, math

def parse_value(token):
    # Remove pontuações de final de linha/matriz comuns nos dumps do PolyBench
    token = token.strip().rstrip(',;')
    # Converte expoente double do Fortran 'D/d' para 'E/e' aceito pelo Python
    token_fixed = token.replace('D', 'E').replace('d', 'e')
    return float(token_fixed)

def get_tokens(filepath):
    """Lê os arquivos palavra por palavra/número por número."""
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
            return False # f1 tem mais dados que f2
        
        try:
            n1 = parse_value(v1)
            n2 = parse_value(v2)
            # Verifica se os números estão próximos dentro da tolerância
            if not math.isclose(n1, n2, rel_tol=rel_tol, abs_tol=abs_tol):
                return False
        except ValueError:
            # Se não for número (ex: NaN ou texto fixo), compara como string pura
            if v1 != v2:
                return False
                
    # Verifica se sobrou algo no segundo dump
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

# Garante a compilação do fpolybench.o com suporte a tempo e dump de arrays
echo "[INFO] Compilando fpolybench.c de referência..." | tee -a $LOG
gcc -c -O3 $POLY_UTILS/fpolybench.c -o $POLY_UTILS/fpolybench.o \
    -DPOLYBENCH_TIME -DPOLYBENCH_DUMP_ARRAYS -DLARGE_DATASET 2>> $LOG

mkdir -p tmp

for BENCH_FILE in $(cat $POLY_UTILS/benchmark_list); do
    B_DIR=$(dirname "$BENCH_FILE")
    B_NAME=$(basename "$BENCH_FILE" .F90)
    B_NAME=$(basename "$B_NAME" .F) 
    
    echo "----------------------------------------" | tee -a $LOG
    echo "Processando: $B_NAME" | tee -a $LOG

    # 1. Pré-processamento via flang -E (Habilita Tempo, Dump de Arrays e Dataset Largo)
    flang -I$POLY_UTILS -I"$B_DIR" "$BENCH_FILE" -E \
        -DPOLYBENCH_TIME -DPOLYBENCH_DUMP_ARRAYS -DLARGE_DATASET > "tmp/input_$B_NAME.f90" 2>> $LOG

    if [ ! -s "tmp/input_$B_NAME.f90" ]; then
        echo "  [ERRO] Falha no pré-processamento do flang -E." | tee -a $LOG
        continue
    fi

    # 2. CORREÇÃO DO IARGC: Substitui o iargc legado pelo padrão do Fortran moderno
    sed -i -E 's/\biargc\s*\(\s*\)/command_argument_count()/Ig' "tmp/input_$B_NAME.f90"

    # 3. Gerar MLIR Baseline via bbc
    bbc "tmp/input_$B_NAME.f90" -emit-fir -o "tmp/base_$B_NAME.mlir" 2>> $LOG
    
    # 4. CHAMADA SILENCIOSA DO SMR (Saídas totalmente redirecionadas ao LOG)
    smr "tmp/input_$B_NAME.f90" "$PAT" -o "tmp/modified_$B_NAME.mlir" >> $LOG 2>&1
    
    # Remove module_terminator se o SMR tiver gerado alterações
    if [ -f "tmp/modified_$B_NAME.mlir" ]; then
        sed -i "/\bmodule_terminator\b/d" "tmp/modified_$B_NAME.mlir"
    fi

    # --- COMPILAÇÃO E LINKAGEM: BASELINE ---
    if [ -f "tmp/base_$B_NAME.mlir" ]; then
        tco "tmp/base_$B_NAME.mlir" -o "tmp/base_$B_NAME.ll" 2>> $LOG
        llc "tmp/base_$B_NAME.ll" -O3 -relocation-model=pic -filetype=obj -o "tmp/base_$B_NAME.o" 2>> $LOG
        
        # Redefinição de símbolos para o Baseline
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
          -lpthread -lstdc++ -lm -o "bin_base" 2>> $LOG
    else
        echo "  [ERRO] bbc falhou ao gerar o MLIR Baseline." | tee -a $LOG
        continue
    fi

    # --- COMPILAÇÃO E LINKAGEM: OTIMIZADO (SMR) ---
    # Verifica se o arquivo existe, tem conteúdo e se é realimente diferente do baseline MLIR
    if [ -f "tmp/modified_$B_NAME.mlir" ] && [ -s "tmp/modified_$B_NAME.mlir" ] && grep -q "smr_pattern" "tmp/modified_$B_NAME.mlir"; then
        echo "  [INFO] Rewrite detectado! Compilando para testes de tempo e corretude..." | tee -a $LOG
        
        tco "tmp/modified_$B_NAME.mlir" -o "tmp/modified_$B_NAME.ll" 2>> $LOG
        llc "tmp/modified_$B_NAME.ll" -O3 -relocation-model=pic -filetype=obj -o "tmp/modified_$B_NAME.o" 2>> $LOG
        
        # Redefinição de símbolos para o Otimizado
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
          -lpthread -lstdc++ -lm -o "bin_modified" 2>> $LOG

        # --- 5. EXECUÇÃO, EXTRAÇÃO DE DADOS E VALIDAÇÃO ---
        # Reseta arquivos temporários de dump para evitar sobras
        rm -f fort.0 base_dump.txt mod_dump.txt stderr_base.txt stderr_mod.txt

        # Executa Baseline (Tempo via stdout, Dump via fort.0 ou stderr)
        TIME_BASE=$(./bin_base 2> stderr_base.txt)
        if [ -f "fort.0" ]; then
            mv fort.0 base_dump.txt
            rm -f stderr_base.txt
        else
            mv stderr_base.txt base_dump.txt
        fi

        # Executa Otimizado
        rm -f fort.0
        TIME_MOD=$(./bin_modified 2> stderr_mod.txt)
        if [ -f "fort.0" ]; then
            mv fort.0 mod_dump.txt
            rm -f stderr_mod.txt
        else
            mv stderr_mod.txt mod_dump.txt
        fi

        # Processamento de resultados
        if [ -n "$TIME_BASE" ] && [ -n "$TIME_MOD" ]; then
            SPEEDUP=$(awk "BEGIN {print $TIME_BASE / $TIME_MOD}")
            
            # Validação Tolerante de Resultados Matemáticos
            if python3 compare_floats.py base_dump.txt mod_dump.txt; then
                VALIDACAO="SUCESSO (Resultados matematicamente equivalentes)"
            else
                VALIDACAO="FALHA (Divergência matemática além do erro tolerado!)"
            fi

            echo "  [RESULT] Tempo Baseline : ${TIME_BASE}s" | tee -a $LOG
            echo "  [RESULT] Tempo Otimizado: ${TIME_MOD}s" | tee -a $LOG
            echo "  [RESULT] Speedup Obtido : ${SPEEDUP}x" | tee -a $LOG
            echo "  [RESULT] Validação      : ${VALIDACAO}" | tee -a $LOG
        else
            echo "  [ERRO] Falha ao capturar os tempos de execução (saída vazia ou segfault)." | tee -a $LOG
        fi
    else
        echo "  [INFO] Sem alterações para este benchmark (Nenhum match estrutural encontrado)." | tee -a $LOG
    fi

    # Limpeza por iteração
    rm -f bin_base bin_modified base_dump.txt mod_dump.txt fort.0 stderr_base.txt stderr_mod.txt
    rm -rf tmp/*
done

rm -rf tmp/ compare_floats.py
echo "----------------------------------------" | tee -a $LOG
echo "Processo finalizado. Resumo salvo em $LOG."