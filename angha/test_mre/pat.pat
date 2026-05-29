c {
#define MATRIX_SIZE 512
static double a[MATRIX_SIZE][MATRIX_SIZE];
static double b[MATRIX_SIZE][MATRIX_SIZE];
static double c[MATRIX_SIZE][MATRIX_SIZE];
void _mm(void) {
  double s;
  int i,j,k;
  for(j=0;j<MATRIX_SIZE;j++) {
     for(i=0;i<MATRIX_SIZE;i++) {
        s=0;
        for(k=0;k<MATRIX_SIZE;k++) {
	   s+=a[i][k]*b[k][j];
	}
        c[i][j] = s;
     }
  }
}
} = {
#include <cblas.h>

#define MATRIX_SIZE 512
static double a[MATRIX_SIZE][MATRIX_SIZE];
static double b[MATRIX_SIZE][MATRIX_SIZE];
static double c[MATRIX_SIZE][MATRIX_SIZE];
void _mm(void) {
  cblas_dgemm(CblasRowMajor, //Specifies row-major (C) or column-major (Fortran) data ordering.
              CblasNoTrans,  //Specifies whether to transpose matrix A.
              CblasNoTrans,  //Specifies whether to transpose matrix B.
              MATRIX_SIZE,   //Number of rows in matrices A and C.
              MATRIX_SIZE,   //Number of columns in matrices B and C.
              MATRIX_SIZE,   //Number of columns in matrix A; number of rows in matrix B.
              1,             //alpha Scaling factor for the product of matrices A and B.
              &(a[0][0]),    //Matrix A.
              MATRIX_SIZE,   //The size of the first dimension of matrix A; if you are passing a matrix A[m][n], the value should be m
              &(b[0][0]),    //Matrix B.
              MATRIX_SIZE,   //The size of the first dimension of matrix B; if you are passing a matrix B[m][n], the value should be m.
              0.0,           //beta Scaling factor for matrix C.
              &(c[0][0]),    //Matrix C.
              MATRIX_SIZE    //The size of the first dimension of matrix C; if you are passing a matrix C[m][n], the value should be m.
             );
}
}
