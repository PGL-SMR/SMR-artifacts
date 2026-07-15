c {
void saxpy0(int N, float alpha, float *x, int incx, float *y, int incy)
{
  for (int i = 0; i < N; ++i) {
    y[i*incy] += alpha * x[i*incx];
  }
}
}={
#include <stdio.h>
void saxpy0(int N, float alpha, float *x, int incx, float *y, int incy)
{
  printf("Pattern saxpy0 replaced");
}
}

c {
void scopy0(int N, float alpha, float *x, int incx, float *y, int incy)
{
  for (int i = 0; i < N; ++i) {
    y[i*incy] = x[i*incx];
  }
}
}={
#include <stdio.h>
void scopy0(int N, float alpha, float *x, int incx, float *y, int incy)
{
  printf("Pattern scopy0 replaced");
}
}

c {
void sdot0(int N, float *x, int incx, float *y, int incy, float out)
{
  for (int i = 0; i < N; ++i) {
    out += x[i*incx] * y[i*incy];
  }
}
}={
#include <stdio.h>
void sdot0(int N, float *x, int incx, float *y, int incy, float out)
{
  printf("Pattern sdot0 replaced");
}
}

c {
void sdot1(int N, float *x, float *y, float out)
{
  for (int i = 0; i < N; ++i) {
    out += x[i] * y[i];
  }
}
}={
#include <stdio.h>
void sdot1(int N, float *x, float *y, float out)
{
  printf("Pattern sdot1 replaced");
}
}

c {
void ddot0(int N, double *x, double *y, double out)
{
  for (int i = 0; i < N; ++i) {
    out += x[i] * y[i];
  }
}
}={
#include <stdio.h>
void ddot0(int N, double *x, double *y, double out)
{
  printf("Pattern ddot0 replaced");
}
}

c {
void sscal0(int N, float *x, int incx, float alpha)
{
  for (int i = 0; i < N; ++i) {
    x[i*incx] *= alpha;
  }
}
}={
#include <stdio.h>
void sscal0(int N, float *x, int incx, float alpha)
{
  printf("Pattern sscal0 replaced");
}
}

c {
void sscal1(int m, int n, float *x, int ldx, float alpha)
{
  for (int mm = 0; mm < m; ++mm) {
    for (int nn = 0; nn < n; ++nn) {
      x[mm*ldx + nn] *= alpha;
    }
  }
}
}={
#include <stdio.h>
void sscal1(int m, int n, float *x, int ldx, float alpha)
{
  printf("Pattern sscal1 replaced");
}
}

c {
void dscal0(unsigned long N, double *x, double alpha)
{
  for (unsigned long i = 0; i < N; ++i) {
    x[i] *= alpha;
  }
}
}={
#include <stdio.h>
void dscal0(unsigned long N, double *x, double alpha)
{
  printf("Pattern dscal0 replaced");
}
}

c {
void sgemm0(int M, int N, int K, float alpha, float *A, int lda, float *B, int ldb, float *C, int ldc)
{
  for(int i = 0; i < M; ++i) {
    for(int k = 0; k < K; ++k) {
      float a_alpha = alpha*A[i*lda+k];
      for(int j = 0; j < N; ++j) {
        C[i*ldc+j] += a_alpha*B[k*ldb+j];
      }
    }
  }
}
}={
#include <stdio.h>
void sgemm0(int M, int N, int K, float alpha, float *A, int lda, float *B, int ldb, float *C, int ldc)
{
  printf("Pattern sgemm0 replaced");
}
}

c {
void sgemm1(int M, int N, int K, float alpha, float *A, int lda, float *B, int ldb, float *C, int ldc)
{
  for(int i = 0; i < M; ++i) {
    for(int j = 0; j < N; ++j) {
      float sum = 0;
      for(int k = 0; k < K; ++k) {
        sum += alpha*A[i*lda+k]*B[j*ldb+k];
      }
      C[i*ldc+j] += sum;
    }
  }
}
}={
#include <stdio.h>
void sgemm1(int M, int N, int K, float alpha, float *A, int lda, float *B, int ldb, float *C, int ldc)
{
  printf("Pattern sgemm1 replaced");
}
}

c {
void sgemm2(int M, int N, int K, float alpha, float *A, int lda, float *B, int ldb, float *C, int ldc)
{
  for(int i = 0; i < M; ++i){
    for(int k = 0; k < K; ++k){
      float a_alpha = alpha*A[k*lda+i];
      for(int j = 0; j < N; ++j){
        C[i*ldc+j] += a_alpha*B[k*ldb+j];
      }
    }
  }
}
}={
#include <stdio.h>
void sgemm2(int M, int N, int K, float alpha, float *A, int lda, float *B, int ldb, float *C, int ldc)
{
  printf("Pattern sgemm2 replaced");
}
}

c {
void sgemm3(int M, int N, int K, float alpha, float *A, int lda, float *B, int ldb, float *C, int ldc)
{
  for(int i = 0; i < M; ++i){
    for(int j = 0; j < N; ++j){
      float sum = 0;
      for(int k = 0; k < K; ++k){
        sum += alpha*A[i+k*lda]*B[k+j*ldb];
      }
      C[i*ldc+j] += sum;
    }
  }
}
}={
#include <stdio.h>
void sgemm3(int M, int N, int K, float alpha, float *A, int lda, float *B, int ldb, float *C, int ldc)
{
  printf("Pattern sgemm3 replaced");
}
}

c {
void dgemm0(unsigned long N, double *A, double *B, double *C)
{
  double c;
  unsigned long i, j, k;
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      c = 0.0;
      for (k = 0; k < N; k++) {
        c += A[i*N+k]*B[k*N+j];
      }
      C[i*N+j] = c;
    }
  }
}
}={
#include <stdio.h>
void dgemm0(unsigned long N, double *A, double *B, double *C)
{
  printf("Pattern dgemm0 replaced");
//  dgemm_("N","N", &block_size, &block_size, &block_size, &alp, i2, &block_size, i1,
//          &block_size, &beta, o, &block_size);
}
}

c {
void dgemm1(unsigned long N, double *A, double *B, double *C)
{
  double c;
  unsigned long i, j, k;
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      c = C[i*N+j];
      for (k = 0; k < N; k++) {
        c += A[i*N+k]*B[k*N+j];
      }
      C[i*N+j] = c;
    }
  }
}
}={
#include <stdio.h>
void dgemm1(unsigned long N, double *A, double *B, double *C)
{
  printf("Pattern dgemm1 replaced");
//  dgemm_("N","N", &block_size, &block_size, &block_size, &alp, i2, &block_size, i1,
//          &block_size, &beta, o, &block_size);
}
}

c {
void dgemm2(unsigned long N, double *A, double *B, double beta, double *C)
{
  double c;
  unsigned long i, j, k;
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      c = beta*C[i*N+j];
      for (k = 0; k < N; k++) {
        c += A[i*N+k]*B[k*N+j];
      }
      C[i*N+j] = c;
    }
  }
}
}={
#include <stdio.h>
void dgemm2(unsigned long N, double *A, double *B, double beta, double *C)
{
  printf("Pattern dgemm2 replaced");
//  dgemm_("N","N", &block_size, &block_size, &block_size, &alp, i2, &block_size, i1,
//          &block_size, &beta, o, &block_size);
}
}

c {
int SIZE;
double** A;
double** B;
double** C;
void dgemm3()
{
  double s;
  for(int mm=0;mm<SIZE;mm++) {
     for(int nn=0;nn<SIZE;nn++) {
        s=0;
        for(int i=0;i<SIZE;i++) {
	   s+=A[nn][i]*B[i][mm];
	}
        C[nn][mm] = s;
     }
  }
}
}={
#include <stdio.h>
int SIZE;
double** A;
double** B;
double** C;
void dgemm3()
{
  printf("Pattern dgemm3 replaced");
}
}

c {
void dgemv0(unsigned long N, double *A, double *X, double *Y)
{
  double y;
  for (unsigned long i = 0; i < N; i++) {
    y = Y[i];
    for (unsigned long j = 0; j < N; j++) {
      y += A[i*N+j] * X[j];
    }
    Y[i] = y;
  }
}
}={
#include <stdio.h>
void dgemv0(unsigned long N, double *A, double *X, double *Y)
{
  printf("Pattern dgemv0 replaced");
}
}