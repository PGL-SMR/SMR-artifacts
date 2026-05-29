#!/bin/bash

PAT=$1
LOG="smr_test_log.txt"

if [ -z "$PAT" ]; then
    echo "Erro: Forneça o arquivo .pat como argumento."
    exit 1
fi

# Exporta o diretório atual para a busca de headers (resolve o problema do < >)
export CPATH=$CPATH:.

echo "=== Teste SMR: $(date) ===" > $LOG

# Compila o utilitário fixo do PolyBench com suporte a medição de tempo
clang -O3 -I utilities -DPOLYBENCH_TIME -c utilities/polybench.c -o polybench.o 2>> $LOG

for BENCH_FILE in $(cat utilities/benchmark_list); do
    B_DIR=$(dirname "$BENCH_FILE")
    B_NAME=$(basename "$BENCH_FILE" .c)
    
    echo "----------------------------------------" | tee -a $LOG
    echo "Processando: $B_NAME" | tee -a $LOG

    # 1. Prepara o arquivo temporário C
    # Como o SMR não aceita a flag -D, injetamos o macro de tempo no topo do arquivo
    echo "#define POLYBENCH_TIME 1" > "tmp_$B_NAME.c"
    cat "$BENCH_FILE" >> "tmp_$B_NAME.c"
    
    # Copia os headers necessários para o diretório atual
    cp "$B_DIR/$B_NAME.h" .
    cp "utilities/polybench.h" .

    # 2. "Truque": Transforma #include <header.h> em #include "header.h"
    sed -i 's/#include <\(.*\)> /#include "\1"/' "tmp_$B_NAME.c"

    # 3. Gerar MLIR Baseline
    smr --compile "tmp_$B_NAME.c" >> $LOG 2>&1
    
    # Verifica se o SMR gerou o arquivo base compilado
    if [ -f "tmp_$B_NAME-compiled.mlir" ]; then
        mv "tmp_$B_NAME-compiled.mlir" "base.mlir"

        # 4. Tentar gerar o MLIR Otimizado
        smr "tmp_$B_NAME.c" "$PAT" -o "modified.mlir" >> $LOG 2>&1
        
        # Se o arquivo foi gerado, significa que o SMR aplicou o padrão com sucesso
        if [ -f "modified.mlir" ]; then
            echo "  [INFO] Rewrite detectado! Compilando para testes de tempo..." | tee -a $LOG
            
            # Lowering e Linkagem (Baseline)
            cir-translate --cir-to-llvmir "base.mlir" -o "base.ll" 2>> $LOG
            llc -relocation-model=pic -O3 -filetype=obj "base.ll" -o "base.o" 2>> $LOG
            clang "base.o" polybench.o -lm -o "bin_base" 2>> $LOG

            # Lowering e Linkagem (Otimizado)
            cir-translate --cir-to-llvmir  "modified.mlir" -o "modified.ll" 2>> $LOG
            llc -relocation-model=pic -O3 -filetype=obj "modified.ll" -o "modified.o" 2>> $LOG
            clang "modified.o" polybench.o -lopenblas -lm -o "bin_modified" 2>> $LOG

            # 5. Execução e Captura dos Tempos
            # Captura apenas a saída padrão do PolyBench (que é o tempo em segundos)
            TIME_BASE=$(./bin_base 2>/dev/null)
            TIME_MOD=$(./bin_modified 2>/dev/null)

            # Garante que ambos os tempos foram capturados com sucesso
            if [ -n "$TIME_BASE" ] && [ -n "$TIME_MOD" ]; then
                # Calcula o Speedup (Tempo_Base / Tempo_Modificado) usando AWK
                SPEEDUP=$(awk "BEGIN {print $TIME_BASE / $TIME_MOD}")
                
                # Exibe e grava os resultados formatados
                echo "  [RESULT] Tempo Baseline : ${TIME_BASE}s" | tee -a $LOG
                echo "  [RESULT] Tempo Otimizado: ${TIME_MOD}s" | tee -a $LOG
                echo "  [RESULT] Speedup Obtido : ${SPEEDUP}x" | tee -a $LOG
            else
                echo "  [ERRO] Falha ao coletar os tempos de execução (saída vazia)." | tee -a $LOG
            fi
        else
            echo "  [INFO] Sem alterações para este benchmark (Nenhum match encontrado)." | tee -a $LOG
        fi
    else
        echo "  [ERRO] SMR falhou ao compilar o Baseline. Verifique o log." | tee -a $LOG
    fi

    # Limpeza rigorosa dos arquivos temporários
    rm -f "tmp_$B_NAME.c" "$B_NAME.h" "polybench.h" "base.mlir" "modified.mlir" \
          "base.ll" "modified.ll" "base.o" "modified.o" "bin_base" "bin_modified"
done

rm -f polybench.o
echo "----------------------------------------" | tee -a $LOG
echo "Processo finalizado. Resumo salvo em $LOG."