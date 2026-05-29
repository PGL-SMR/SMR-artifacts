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

/* Variables and functions */
 int /*<<< orphan*/  printf (char*,...) ; 
 double sqrt (double) ; 

int MLI_Utils_QR(double *qArray, double *rArray, int nrows, int ncols)
{
   int    icol, irow, pcol, retFlag=0;
   double innerProd, *currQ, *currR, *prevQ, alpha;

#ifdef MLI_DEBUG_DETAILED
   printf("(before) QR %6d %6d : \n", nrows, ncols);
   for ( irow = 0; irow < nrows; irow++ )
   {
      for ( icol = 0; icol < ncols; icol++ )
         printf(" %13.5e ", qArray[icol*nrows+irow]);
      printf("\n");
   }
#endif
   for ( icol = 0; icol < ncols; icol++ )
   {
      currQ = &qArray[icol*nrows];
      currR = &rArray[icol*ncols];
      for ( pcol = 0; pcol < icol; pcol++ )
      {
         prevQ = &qArray[pcol*nrows];
         alpha = 0.0;
         for ( irow = 0; irow < nrows; irow++ )
            alpha += (currQ[irow] * prevQ[irow]); 
         currR[pcol] = alpha;
         for ( irow = 0; irow < nrows; irow++ )
            currQ[irow] -= ( alpha * prevQ[irow] ); 
      }
      for ( pcol = icol; pcol < ncols; pcol++ ) currR[pcol] = 0.0;
      innerProd = 0.0;
      for ( irow = 0; irow < nrows; irow++ )
         innerProd += (currQ[irow] * currQ[irow]); 
      innerProd = sqrt( innerProd );
      if ( innerProd < 1.0e-18 ) 
      {
         return icol + 1;
      }   
      else
      {
         currR[icol] = innerProd;
         alpha = 1.0 / innerProd;
         for ( irow = 0; irow < nrows; irow++ )
            currQ[irow] = alpha * currQ[irow]; 
      }
   }
#ifdef MLI_DEBUG_DETAILED
   printf("(after ) Q %6d %6d : \n", nrows, ncols);
   for ( irow = 0; irow < nrows; irow++ )
   {
      for ( icol = 0; icol < ncols; icol++ )
         printf(" %13.5e ", qArray[icol*nrows+irow]);
      printf("\n");
   }
   printf("(after ) R %6d %6d : \n", nrows, ncols);
   for ( irow = 0; irow < ncols; irow++ )
   {
      for ( icol = 0; icol < ncols; icol++ )
         printf(" %13.5e ", rArray[icol*ncols+irow]);
      printf("\n");
   }
#endif
   return retFlag;
}