c {
void ddot0(int N, float *x, float *y, float out, int INCX, int INCY)
{
  for (int i = 0; i < N; ++i) {
    out += x[i*INCX] * y[i*INCY];
  }
}
}={
#include <cblas.h>
void ddot0(int N, float *x, float *y, float out, int INCX, int INCY)
{
  out += cblas_sdot(N, x, INCX, y, INCY);
}
}