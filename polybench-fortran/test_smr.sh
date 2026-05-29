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

echo "=== Teste SMR Fortran Corrigido: $(date) ===" > $LOG

# Garante a compilação do fpolybench.o
echo "[INFO] Compilando fpolybench.c de referência..." | tee -a $LOG
gcc -c -O3 $POLY_UTILS/fpolybench.c -o $POLY_UTILS/fpolybench.o -DPOLYBENCH_TIME 2>> $LOG

mkdir -p tmp

for BENCH_FILE in $(cat $POLY_UTILS/benchmark_list); do
    B_DIR=$(dirname "$BENCH_FILE")
    B_NAME=$(basename "$BENCH_FILE" .F90)
    B_NAME=$(basename "$B_NAME" .F) 
    
    echo "----------------------------------------" | tee -a $LOG
    echo "Processando: $B_NAME" | tee -a $LOG

    # 1. Pré-processamento via flang -E
    flang -I$POLY_UTILS -I"$B_DIR" "$BENCH_FILE" -E -DPOLYBENCH_TIME > "tmp/input_$B_NAME.f90" 2>> $LOG

    if [ ! -s "tmp/input_$B_NAME.f90" ]; then
        echo "  [ERRO] Falha no pré-processamento do flang -E." | tee -a $LOG
        continue
    fi

    # 2. CORREÇÃO DO IARGC: Substitui o iargc legado pelo padrão do Fortran moderno
    sed -i -E 's/\biargc\s*\(\s*\)/command_argument_count()/Ig' "tmp/input_$B_NAME.f90"

    # 3. Gerar MLIR Baseline via bbc
    bbc "tmp/input_$B_NAME.f90" -emit-fir -o "tmp/base_$B_NAME.mlir" 2>> $LOG
    
    # 4. CORREÇÃO DO SMR: Chamada posicional sem a flag --pat
    smr "tmp/input_$B_NAME.f90" "$PAT" -o "tmp/modified_$B_NAME.mlir" 2>> $LOG
    
    # Remove module_terminator se o SMR tiver gerado alterações
    if [ -f "tmp/modified_$B_NAME.mlir" ]; then
        sed -i "/\bmodule_terminator\b/d" "tmp/modified_$B_NAME.mlir"
    fi

    # --- COMPILAÇÃO E LINKAGEM: BASELINE ---
    if [ -f "tmp/base_$B_NAME.mlir" ]; then
        tco "tmp/base_$B_NAME.mlir" -o "tmp/base_$B_NAME.ll" 2>> $LOG
        llc "tmp/base_$B_NAME.ll" -O3 -relocation-model=pic -filetype=obj -o "tmp/base_$B_NAME.o" 2>> $LOG
        
        # PASSO 1: Mapeia os timers legítimos do PolyBench
        objcopy "tmp/base_$B_NAME.o" \
          --redefine-sym _QPpolybench_timer_start=polybench_timer_start_ \
          --redefine-sym _QPpolybench_timer_stop=polybench_timer_stop_ \
          --redefine-sym _QPpolybench_timer_print=polybench_timer_print_ 2>> $LOG

        # PASSO 2: Neutraliza separadamente o código morto sem violar as regras do objcopy
        objcopy "tmp/base_$B_NAME.o" \
          --redefine-sym _QPgetarg=polybench_timer_start_ \
          --redefine-sym _QPcheck_err=polybench_timer_stop_ 2>> $LOG

        # Usando flang para linkagem final do Baseline
        flang "tmp/base_$B_NAME.o" \
          "./$POLY_UTILS/fpolybench.o" \
          "$LIB_OPENBLAS/libopenblas.a" \
          -lpthread -lstdc++ -lm -o "bin_base" 2>> $LOG
    else
        echo "  [ERRO] bbc falhou ao gerar o MLIR Baseline. Verifique o log." | tee -a $LOG
        continue
    fi

    # --- COMPILAÇÃO E LINKAGEM: OTIMIZADO (SMR) ---
    if [ -f "tmp/modified_$B_NAME.mlir" ] && [ -s "tmp/modified_$B_NAME.mlir" ]; then
        echo "  [INFO] Match de Padrão Detectado! Compilando versão otimizada..." | tee -a $LOG
        
        tco "tmp/modified_$B_NAME.mlir" -o "tmp/modified_$B_NAME.ll" 2>> $LOG
        llc "tmp/modified_$B_NAME.ll" -O3 -relocation-model=pic -filetype=obj -o "tmp/modified_$B_NAME.o" 2>> $LOG
        
        # PASSO 1: Mapeia timers e as substituições do SMR para o BLAS
        objcopy "tmp/modified_$B_NAME.o" \
          --redefine-sym _QPpolybench_timer_start=polybench_timer_start_ \
          --redefine-sym _QPpolybench_timer_stop=polybench_timer_stop_ \
          --redefine-sym _QPpolybench_timer_print=polybench_timer_print_ \
          --redefine-sym _QPdgemm=dgemm_ \
          --redefine-sym _QPdgemv=dgemv_ \
          --redefine-sym _QPdsymm=dsymm_ \
          --redefine-sym _QPdsyr2k=dsyr2k_ \
          --redefine-sym _QPdtrmm=dtrmm_ 2>> $LOG

        # PASSO 2: Neutraliza o código morto no objeto modificado
        objcopy "tmp/modified_$B_NAME.o" \
          --redefine-sym _QPgetarg=polybench_timer_start_ \
          --redefine-sym _QPcheck_err=polybench_timer_stop_ 2>> $LOG

        # Usando flang para linkagem final do Otimizado
        flang "tmp/modified_$B_NAME.o" \
          "./$POLY_UTILS/fpolybench.o" \
          "$LIB_OPENBLAS/libopenblas.a" \
          -lpthread -lstdc++ -lm -o "bin_modified" 2>> $LOG

        # 5. EXECUÇÃO E MEDIÇÃO DE TEMPO
        TIME_BASE=$(./bin_base 2>/dev/null)
        TIME_MOD=$(./bin_modified 2>/dev/null)

        if [ -n "$TIME_BASE" ] && [ -n "$TIME_MOD" ]; then
            SPEEDUP=$(awk "BEGIN {print $TIME_BASE / $TIME_MOD}")
            echo "  [RESULT] Tempo Baseline : ${TIME_BASE}s" | tee -a $LOG
            echo "  [RESULT] Tempo Otimizado: ${TIME_MOD}s" | tee -a $LOG
            echo "  [RESULT] Speedup Obtido : ${SPEEDUP}x" | tee -a $LOG
        else
            echo "  [ERRO] Falha ao capturar os tempos de execução (saída vazia)." | tee -a $LOG
        fi
    else
        echo "  [INFO] Sem alterações para este benchmark (Nenhum match encontrado)." | tee -a $LOG
    fi

    # Limpeza por iteração
    rm -f bin_base bin_modified
    rm -rf tmp/*
done

rm -rf tmp/
echo "----------------------------------------" | tee -a $LOG
echo "Processo finalizado. Resumo salvo em $LOG."