#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/* Forward declarations */

/* Type definitions */

/* Variables and functions */

float ff_dot_productf(const float* a, const float* b, int length)
{
    float sum = 0;
    int i;

    for(i=0; i<length; i++)
        sum += a[i] * b[i];

    return sum;
}

int main(void)
{
    int length = 100000000; // 10 milhões de elementos para medição precisa

    // Alocação dinâmica na heap para evitar estouro de pilha (stack overflow)
    float *a = (float *)malloc(length * sizeof(float));
    float *b = (float *)malloc(length * sizeof(float));

    if (a == NULL || b == NULL) {
        printf("Erro ao alocar memória.\n");
        return 1;
    }

    // Preenchimento dos vetores com valores de teste
    for (int i = 0; i < length; i++) {
        a[i] = 1.5f;
        b[i] = 2.0f;
    }

    // Início da medição de tempo
    clock_t start = clock();

    float result = ff_dot_productf(a, b, length);

    // Fim da medição
    clock_t end = clock();

    // Cálculo do tempo em segundos
    double time_taken = ((double)(end - start)) / CLOCKS_PER_SEC;

    // Exibição dos resultados
    printf("Resultado do produto escalar: %.2f\n", result);
    printf("Tempo de execucao: %.6f segundos (%.3f ms)\n", time_taken, time_taken * 1000.0);

    // Liberação de memória
    free(a);
    free(b);

    return 0;
}