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

__attribute__((used)) static inline double vdotv(double * x, double * y, int n){ // x[n].y[n]
  int nn;
  double sum = 0.0;
  for(nn=0;nn<n;nn++){
    sum += x[nn]*y[nn];
  }
  return(sum);
}