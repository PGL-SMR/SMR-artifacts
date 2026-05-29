c {
void smr_gemm(int ni, int nj, int nk, double alpha, double beta, double A[][1024], double B[][1024], double C[][1024]) {
   int i, j, k;
   for (i = 0; i < ni; i++) {
    for (j = 0; j < nj; j++) {
      C[i][j] *= beta;
      for (k = 0; k < nk; ++k) {
        C[i][j] += alpha * A[i][k] * B[k][j];
      }
    }
  }
}
} = {
#include <cblas.h>

void smr_gemm(int ni, int nj, int nk, double alpha, double beta, double A[][1024], double B[][1024], double C[][1024]) {
  cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, ni, nj, nk, alpha, &A[0][0], nk, &B[0][0], nj, beta, &C[0][0], nj);
}
}

c {
void smr_gemver_loop1(int n, double A[][4000], double u1[], double v1[], double u2[], double v2[]) {
  int i, j;
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      A[i][j] = A[i][j] + u1[i] * v1[j] + u2[i] * v2[j];
    }
  }
}
} = {
#include <cblas.h>

void smr_gemver_loop1(int n, double A[][4000], double u1[], double v1[], double u2[], double v2[]) {
  cblas_dger(CblasRowMajor, n, n, 1.0, u1, 1, v1, 1, &A[0][0], n);
  cblas_dger(CblasRowMajor, n, n, 1.0, u2, 1, v2, 1, &A[0][0], n);
}
}

c {
void smr_gemver_loop2(int n, double beta, double A[][4000], double x[], double y[]) {
  int i, j;
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      x[i] = x[i] + beta * A[j][i] * y[j];
    }
  }
}
} = {
#include <cblas.h>

void smr_gemver_loop2(int n, double beta, double A[][4000], double x[], double y[]) {
  cblas_dgemv(CblasRowMajor, CblasTrans, n, n, beta, &A[0][0], n, y, 1, 1.0, x, 1);
}
}

c {
void smr_gemver_loop3(int n, double x[], double z[]) {
  int i;
  for (i = 0; i < n; i++) {
    x[i] = x[i] + z[i];
  }
}
} = {
#include <cblas.h>

void smr_gemver_loop3(int n, double x[], double z[]) {
  cblas_daxpy(n, 1.0, z, 1, x, 1);
}
}

c {
void smr_gemver_loop4(int n, double alpha, double A[][4000], double x[], double w[]) {
  int i, j;
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      w[i] = w[i] + alpha * A[i][j] * x[j];
    }
  }
}
} = {
#include <cblas.h>

void smr_gemver_loop4(int n, double alpha, double A[][4000], double x[], double w[]) {
  cblas_dgemv(CblasRowMajor, CblasNoTrans, n, n, alpha, &A[0][0], n, x, 1, 1.0, w, 1);
}
}

c {
void twomm0(int ni, int nj, int nk, double alpha, double tmp[][1024], double A[][1024], double B[][1024])
{
  int i, j, k;
  for (i = 0; i < ni; i++) {
    for (j = 0; j < nj; j++) {
      tmp[i][j] = 0;
      for (k = 0; k < nk; ++k) {
        tmp[i][j] += alpha * A[i][k] * B[k][j];
      }
    }
  }
}
}={
#include <cblas.h>
void twomm0(int ni, int nj, int nk, double alpha, double tmp[][1024], double A[][1024], double B[][1024])
{
  cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, ni, nj, nk, alpha, &A[0][0], 1024, &B[0][0], 1024, 0.0, &tmp[0][0], 1024);
}
}

c {
void twomm1(int ni, int nj, int nl, double beta, double tmp[][1024], double C[][1024], double D[][1024])
{
  int i, j, k;
  for (i = 0; i < ni; i++) {
    for (j = 0; j < nl; j++) {
      D[i][j] *= beta;
      for (k = 0; k < nj; ++k) {
        D[i][j] += tmp[i][k] * C[k][j];
      }
    }
  }
}
}={
#include <cblas.h>
void twomm1(int ni, int nj, int nl, double beta, double tmp[][1024], double C[][1024], double D[][1024])
{
  cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, ni, nl, nj, 1.0, &tmp[0][0], 1024, &C[0][0], 1024, beta, &D[0][0], 1024);
}
}

c {
void pat_trmm(int ni, double alpha, double A[][1024], double B[][1024])
{
  int i, j, k;
  for (i = 1; i < ni; i++) {
    for (j = 0; j < ni; j++) {
      for (k = 0; k < i; k++) {
        B[i][j] += alpha * A[i][k] * B[j][k];
      }
    }
  }
}
}={
#include <cblas.h>
void pat_trmm(int ni, double alpha, double A[][1024], double B[][1024])
{
  cblas_dtrmm(CblasRowMajor, CblasLeft, CblasLower, CblasTrans, CblasNonUnit, ni, ni, alpha, &A[0][0], ni, &B[0][0], ni);
}
}

c {
void pat_syrk(int ni, int nj, double alpha, double C[][1024], double A[][1024])
{
  int i, j, k;
  for (i = 0; i < ni; i++) {
    for (j = 0; j < ni; j++) {
      for (k = 0; k < nj; k++) {
        C[i][j] += alpha * A[i][k] * A[j][k];
      }
    }
  }
}
}={
#include <cblas.h>
void pat_syrk(int ni, int nj, double alpha, double C[][1024], double A[][1024])
{
  cblas_dsyrk(CblasRowMajor, CblasLower, CblasNoTrans, ni, nj, alpha, &A[0][0], nj, 1.0, &C[0][0], ni);
}
}

c {
void pat_syr2k(int ni, int nj, double alpha, double C[][1024], double A[][1024], double B[][1024])
{
  int i, j, k;
  for (i = 0; i < ni; i++) {
    for (j = 0; j < ni; j++) {
      for (k = 0; k < nj; k++) {
        C[i][j] += alpha * A[i][k] * B[j][k];
        C[i][j] += alpha * B[i][k] * A[j][k];
      }
    }
  }
}
}={
#include <cblas.h>
void pat_syr2k(int ni, int nj, double alpha, double C[][1024], double A[][1024], double B[][1024])
{
  cblas_dsyr2k(CblasRowMajor, CblasLower, CblasNoTrans, ni, nj, alpha, &A[0][0], nj, &B[0][0], nj, 1.0, &C[0][0], ni);
}
}

c {
void pat_symm(int ni, int nj, double alpha, double beta, double C[][1024], double A[][1024], double B[][1024])
{
  int i, j, k;
  double acc;
  for (i = 0; i < ni; i++) {
    for (j = 0; j < nj; j++) {
      acc = 0;
      for (k = 0; k < j - 1; k++) {
        C[k][j] += alpha * A[k][i] * B[i][j];
        acc += B[k][j] * A[k][i];
      }
      C[i][j] = beta * C[i][j] + alpha * A[i][i] * B[i][j] + alpha * acc;
    }
  }
}
}={
#include <cblas.h>
void pat_symm(int ni, int nj, double alpha, double beta, double C[][1024], double A[][1024], double B[][1024])
{
  cblas_dsymm(CblasRowMajor, CblasRight, CblasLower, ni, nj, alpha, &A[0][0], nj, &B[0][0], nj, beta, &C[0][0], nj);
}
}

c {
void pat_mvt(int n, double x1[], double y_1[], double A[][4000])
{
  int i, j;
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      x1[i] = x1[i] + A[i][j] * y_1[j];
    }
  }
}
}={
#include <cblas.h>
void pat_mvt(int n, double x1[], double y_1[], double A[][4000])
{
  cblas_dgemv(CblasRowMajor, CblasNoTrans, n, n, 1.0, &A[0][0], n, &y_1[0], 1, 1.0, &x1[0], 1);
}
}

c {
void pat_mvt2(int n, double x2[], double y_2[], double A[][4000])
{
  int i, j;
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      x2[i] = x2[i] + A[j][i] * y_2[j];
    }
  }
}
}={
#include <cblas.h>
void pat_mvt2(int n, double x2[], double y_2[], double A[][4000])
{
  cblas_dgemv(CblasRowMajor, CblasTrans, n, n, 1.0, &A[0][0], n, &y_2[0], 1, 1.0, &x2[0], 1);
}
}

c {
void gemm_match(int ni, int nj, int nk, double C[][1024], double A[][1024], double B[][1024])
{
  int i, j, k;
  for (i = 0; i < ni; i++) {
    for (j = 0; j < nj; j++) {
      C[i][j] = 0;
      for (k = 0; k < nk; ++k) {
        C[i][j] += A[i][k] * B[k][j];
      }
    }
  }
}
}={
#include <cblas.h>
void gemm_match(int ni, int nj, int nk, double C[][1024], double A[][1024], double B[][1024])
{
  cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, ni, nj, nk, 1.0, &A[0][0], nk, &B[0][0], nj, 0.0, &C[0][0], nj);
}
}

c {
void atax(int nx, int ny, double A[][4000], double x[], double y[], double tmp[])
{
  int i, j;
  for (i = 0; i < nx; i++) {
    tmp[i] = 0;
    for (j = 0; j < ny; j++) {
      tmp[i] = tmp[i] + A[i][j] * x[j];
    }
    for (j = 0; j < ny; j++) {
      y[j] = y[j] + A[i][j] * tmp[i];
    }
  }
}
}={
#include <cblas.h>
void atax(int nx, int ny, double A[][4000], double x[], double y[], double tmp[])
{
  cblas_dgemv(CblasRowMajor, CblasNoTrans, nx, ny, 1.0, &A[0][0], ny, &x[0], 1, 0.0, &tmp[0], 1);
  cblas_dgemv(CblasRowMajor, CblasTrans, nx, ny, 1.0, &A[0][0], ny, &tmp[0], 1, 0.0, &y[0], 1);
}
}

c {
void pat_bicg(int nx, int ny, double A[][4000], double s[], double q[], double p[], double r[])
{
  int i, j;
  for (i = 0; i < nx; i++) {
    q[i] = 0;
    for (j = 0; j < ny; j++) {
      s[j] = s[j] + r[i] * A[i][j];
      q[i] = q[i] + A[i][j] * p[j];
    }
  }
}
}={
#include <cblas.h>
void pat_bicg(int nx, int ny, double A[][4000], double s[], double q[], double p[], double r[])
{
  cblas_dgemv(CblasRowMajor, CblasTrans, nx, ny, 1.0, &A[0][0], ny, &r[0], 1, 0.0, &s[0], 1);
  cblas_dgemv(CblasRowMajor, CblasNoTrans, nx, ny, 1.0, &A[0][0], ny, &p[0], 1, 0.0, &q[0], 1);
}
}

