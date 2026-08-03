c {
void sdot0(int N, float *x, float *y, float out)
{
  for (int i = 0; i < N; ++i) {
    out += x[i] * y[i];
  }
}
}={
#include <cblas.h>
void sdot0(int N, float *x, float *y, float out)
{
  out += cblas_sdot(N, x, 1, y, 1);
}
}