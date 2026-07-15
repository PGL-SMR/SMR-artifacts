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
 int /*<<< orphan*/  dgemv_ (char*,size_t*,size_t*,double*,double*,size_t*,double*,size_t*,double*,double*,size_t*) ; 

HYPRE_Int 
hypre_CSRBlockMatrixBlockMatvec(HYPRE_Complex alpha,
                                HYPRE_Complex* mat,
                                HYPRE_Complex* v,
                                HYPRE_Complex beta, 
                                HYPRE_Complex* ov,
                                HYPRE_Int block_size)
{
   HYPRE_Int ierr = 0;

#if LB_VERSION
   {
      HYPRE_Int one = 1;

      dgemv_("T",  &block_size, &block_size, &alpha, mat, &block_size, v,
             &one, &beta, ov, &one);
   }
   
#else
   {
      HYPRE_Int    i, j;
      HYPRE_Complex ddata;

      /* if alpha = 0, then no matvec */
      if (alpha == 0.0)
      {
         for (j = 0; j < block_size; j++)
         {
            ov[j] *= beta;
         }
         return ierr;
      }
      
      /* ov = (beta/alpha) * ov; */
      ddata = beta / alpha;
      if (ddata != 1.0)
      {
         if (ddata == 0.0)
         {
            for (j = 0; j < block_size; j++)
            {
               ov[j] = 0.0;
            }
         }
         else 
         {
            for (j = 0; j < block_size; j++)
            {
               ov[j] *= ddata;
            }
         }
      }
      
      /* ov = ov + mat*v */
      for (i = 0; i < block_size; i++)
      {
         ddata =  ov[i];
         for (j = 0; j < block_size; j++)
         {
            ddata += mat[i*block_size + j] * v[j];
         }
         ov[i] = ddata;
      }
      
      /* ov = alpha*ov */
      if (alpha != 1.0)
      {
         for (j = 0; j < block_size; j++)
         {
            ov[j] *= alpha;
         }
      }
   }
   
#endif

   return ierr;
   
}