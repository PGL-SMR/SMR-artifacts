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
typedef  size_t uint ;
struct xxt {double* X; size_t* Xp; } ;

/* Variables and functions */

__attribute__((used)) static void apply_X(double *vs, uint ns, const struct xxt *data,
                    const double *vx, uint nx)
{
  const double *X = data->X; const uint *Xp = data->Xp;
  uint i,j;
  for(i=0;i<ns;++i) vs[i]=0;
  for(i=0;i<nx;++i) {
    const double v = vx[i];
    const double *x = X+Xp[i]; uint n=Xp[i+1]-Xp[i];
    for(j=0;j<n;++j) vs[j]+=x[j]*v;
  }
}