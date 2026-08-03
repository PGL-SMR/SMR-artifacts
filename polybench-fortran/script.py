import re
import matplotlib.pyplot as plt

def plot_speedups(log_filename):
    benchmarks = []
    speedups = []
    
    current_benchmark = None
    
    # Lendo o arquivo de log
    try:
        with open(log_filename, 'r', encoding='utf-8') as file:
            for line in file:
                # Captura o nome do benchmark sendo processado
                bench_match = re.search(r"Processando:\s*(.+)", line)
                if bench_match:
                    current_benchmark = bench_match.group(1).strip()
                
                # Captura o valor numérico do Speedup
                speedup_match = re.search(r"Speedup Obtido\s*:\s*([0-9\.]+)x", line)
                if speedup_match and current_benchmark:
                    speedup_value = float(speedup_match.group(1))
                    benchmarks.append(current_benchmark)
                    speedups.append(speedup_value)
                    current_benchmark = None # Reseta para não duplicar
                    
    except FileNotFoundError:
        print(f"Erro: Arquivo '{log_filename}' não encontrado.")
        return

    if not benchmarks:
        print("Nenhum dado de speedup com sucesso foi encontrado no log.")
        return

    # Configuração do gráfico
    plt.figure(figsize=(10, 6))
    
    # Como a variação de speedup é muito grande (de ~2x até ~595x), 
    # usar uma cor chamativa com bordas escuras fica melhor visível
    bars = plt.bar(benchmarks, speedups, color='#4C72B0', edgecolor='black', zorder=3)
    
    # Adiciona o valor numérico do speedup no topo de cada barra
    for bar in bars:
        yval = bar.get_height()
        # O offset de y (+ uma pequena margem baseada no max do y) ajuda a não cortar o texto
        plt.text(bar.get_x() + bar.get_width()/2, yval + (max(speedups)*0.02), 
                 f'{yval:.1f}x', ha='center', va='bottom', fontsize=10, fontweight='bold')

    # Estilização
    plt.title('Speedup (BLAS rewrite)', fontsize=14, fontweight='bold')
    plt.xlabel('Benchmarks', fontsize=12)
    plt.ylabel('Speedup', fontsize=12)
    
    # Rotaciona os nomes no eixo X para evitar sobreposição
    plt.xticks(rotation=45, ha='right', fontsize=11)
    
    # Adiciona grid apenas no eixo Y e coloca atrás das barras (zorder)
    plt.grid(axis='y', linestyle='--', alpha=0.7, zorder=0)
    
    # Opcional: Se quiser usar escala logarítmica devido à diferença absurda entre 2x e 595x,
    # descomente a linha abaixo:
    # plt.yscale('log')

    # Ajusta o layout para não cortar as margens e salva a imagem
    plt.tight_layout()
    plt.savefig('grafico_speedups.png', dpi=300)
    print("Gráfico gerado com sucesso e salvo como 'grafico_speedups.png'!")
    
    # Mostra o gráfico na tela
    plt.show()

if __name__ == "__main__":
    # Aponta para o nome do log gerado pelo seu script bash
    plot_speedups('smr_fortran_test_log.txt')