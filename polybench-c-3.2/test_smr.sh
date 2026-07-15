#!/bin/bash

PAT=$1
LOG="smr_test_log.txt"

if [ -z "$PAT" ]; then
    echo "Erro: Forneça o arquivo .pat como argumento."
    exit 1
fi

# Exporta o diretório atual para a busca de headers
export CPATH=$CPATH:.

echo "=== Teste SMR: $(date) ===" > $LOG

# -------------------------------------------------------------------------
# INJETOR DO COMPARADOR DE PONTO FLUTUANTE
# Cria um script Python rápido para comparar os outputs numéricos ignorando 
# pequenas variações de arredondamento (ex: 1.000001 vs 1.000002)
# -------------------------------------------------------------------------
cat << 'EOF' > compare_floats.py
import sys, math

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
            n1, n2 = float(v1), float(v2)
            # Verifica se os números estão muito próximos um do outro
            if not math.isclose(n1, n2, rel_tol=rel_tol, abs_tol=abs_tol):
                return False
        except ValueError:
            # Se não for número (ex: NaN ou texto puro), compara como string
            if v1 != v2:
                return False
                
    # Verifica se f2 ainda tem mais dados sobrando
    try:
        next(t2)
        return False
    except StopIteration:
        pass
        
    return True

if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit(1)
    # Retorna código de erro 0 (sucesso) ou 1 (falha) para o Bash
    sys.exit(0 if compare(sys.argv[1], sys.argv[2]) else 1)
EOF
# -------------------------------------------------------------------------

# Compila o utilitário fixo do PolyBench com suporte a medição de tempo
clang -O3 -I utilities -DPOLYBENCH_TIME -c utilities/polybench.c -o polybench.o 2>> $LOG

for BENCH_FILE in $(cat utilities/benchmark_list); do
    B_DIR=$(dirname "$BENCH_FILE")
    B_NAME=$(basename "$BENCH_FILE" .c)
    
    echo "----------------------------------------" | tee -a $LOG
    echo "Processando: $B_NAME" | tee -a $LOG

    # 1. Prepara o arquivo temporário C (Injeta Macros de Tempo e Dump de Arrays)
    echo "#define POLYBENCH_TIME 1" > "tmp_$B_NAME.c"
    echo "#define POLYBENCH_DUMP_ARRAYS 1" >> "tmp_$B_NAME.c"
    cat "$BENCH_FILE" >> "tmp_$B_NAME.c"
    
    # Copia os headers
    cp "$B_DIR/$B_NAME.h" .
    cp "utilities/polybench.h" .

    # 2. "Truque": Transforma #include <header.h> em #include "header.h"
    sed -i 's/#include <\(.*\)> /#include "\1"/' "tmp_$B_NAME.c"

    # 3. Gerar MLIR Baseline
    smr --compile "tmp_$B_NAME.c" >> $LOG 2>&1
    
    if [ -f "tmp_$B_NAME-compiled.mlir" ]; then
        mv "tmp_$B_NAME-compiled.mlir" "base.mlir"

        # 4. Tentar gerar o MLIR Otimizado
        smr "tmp_$B_NAME.c" "$PAT" -o "modified.mlir" >> $LOG 2>&1
        
        # Verifica se houve reescrita e gerou diferenças com a base
        if grep -q "cblas" "modified.mlir"; then
            echo "  [INFO] Rewrite detectado! Compilando para testes de tempo e corretude..." | tee -a $LOG
            
            # Lowering e Linkagem (Baseline)
            cir-translate --cir-to-llvmir "base.mlir" -o "base.ll" 2>> $LOG
            llc -relocation-model=pic -O3 -filetype=obj "base.ll" -o "base.o" 2>> $LOG
            clang "base.o" polybench.o -lm -o "bin_base" 2>> $LOG

            # Lowering e Linkagem (Otimizado)
            cir-translate --cir-to-llvmir  "modified.mlir" -o "modified.ll" 2>> $LOG
            llc -relocation-model=pic -O3 -filetype=obj "modified.ll" -o "modified.o" 2>> $LOG
            clang "modified.o" polybench.o -lopenblas -lm -o "bin_modified" 2>> $LOG

            # 5. Execução e Captura (Tempos e Dados)
            TIME_BASE=$(./bin_base 2> base_dump.txt)
            TIME_MOD=$(./bin_modified 2> mod_dump.txt)

            if [ -n "$TIME_BASE" ] && [ -n "$TIME_MOD" ]; then
                SPEEDUP=$(awk "BEGIN {print $TIME_BASE / $TIME_MOD}")
                
                # VERIFICAÇÃO DE CORRETUDE TOLERANTE A PONTO FLUTUANTE
                if python3 compare_floats.py base_dump.txt mod_dump.txt; then
                    VALIDACAO="SUCESSO (Resultados equivalentes)"
                else
                    VALIDACAO="FALHA (Divergência matemática detectada!)"
                fi
                
                echo "  [RESULT] Tempo Baseline : ${TIME_BASE}s" | tee -a $LOG
                echo "  [RESULT] Tempo Otimizado: ${TIME_MOD}s" | tee -a $LOG
                echo "  [RESULT] Speedup Obtido : ${SPEEDUP}x" | tee -a $LOG
                echo "  [RESULT] Validação      : ${VALIDACAO}" | tee -a $LOG
            else
                echo "  [ERRO] Falha ao coletar os tempos de execução (saída vazia ou segfault)." | tee -a $LOG
            fi
        else
            echo "  [INFO] Sem alterações para este benchmark (Nenhum match encontrado ou arquivo idêntico)." | tee -a $LOG
        fi
    else
        echo "  [ERRO] SMR falhou ao compilar o Baseline. Verifique o log." | tee -a $LOG
    fi

    # Limpeza por iteração
    rm -f "tmp_$B_NAME.c" "$B_NAME.h" "polybench.h" "base.mlir" "modified.mlir" \
          "base.ll" "modified.ll" "base.o" "modified.o" "bin_base" "bin_modified" \
          "base_dump.txt" "mod_dump.txt"
done

# Limpa dependências finais e script python local
rm -f polybench.o compare_floats.py
echo "----------------------------------------" | tee -a $LOG
echo "Processo finalizado. Resumo salvo em $LOG."