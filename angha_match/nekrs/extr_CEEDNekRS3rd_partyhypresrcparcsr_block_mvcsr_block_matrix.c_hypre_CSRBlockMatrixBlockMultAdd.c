#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t HYPRE_Int ;
typedef  double HYPRE_Complex ;

/* Variables and functions */
 int /*<<< orphan*/  dgemm_ (char*,char*,size_t*,size_t*,size_t*,double*,double*,size_t*,double*,size_t*,double*,double*,size_t*) ; 

HYPRE_Int
hypre_CSRBlockMatrixBlockMultAdd(HYPRE_Complex* i1,
                                 HYPRE_Complex* i2,
                                 HYPRE_Complex beta, 
                                 HYPRE_Complex* o,
                                 HYPRE_Int block_size)
{

#if LB_VERSION
   {
      HYPRE_Complex alp = 1.0;
      dgemm_("N","N", &block_size, &block_size, &block_size, &alp, i2, &block_size, i1,
          &block_size, &beta, o, &block_size);
   }
#else
   {
      HYPRE_Int    i, j, k;
      HYPRE_Complex ddata;

      if (beta == 0.0)
      {
         for (i = 0; i < block_size; i++)
         {
            for (j = 0; j < block_size; j++)
            {
               ddata = 0.0;
               for (k = 0; k < block_size; k++)
               {
                  ddata += i1[i*block_size + k] * i2[k*block_size + j];
               }
               o[i*block_size + j] = ddata;
            }
         }
      }
      else if (beta == 1.0)
      {
         for(i = 0; i < block_size; i++)
         {
            for(j = 0; j < block_size; j++)
            {
               ddata = o[i*block_size + j];
               for(k = 0; k < block_size; k++)
                  ddata += i1[i*block_size + k] * i2[k*block_size + j];
               o[i*block_size + j] = ddata;
            }
         }
      }
      else
      {
         for(i = 0; i < block_size; i++)
         {
            for(j = 0; j < block_size; j++)
            {
               ddata = beta * o[i*block_size + j];
               for(k = 0; k < block_size; k++)
                  ddata += i1[i*block_size + k] * i2[k*block_size + j];
               o[i*block_size + j] = ddata;
            }
         }
      }
   }
   
#endif

   return 0;
}