c {
void axpy_1(unsigned int n, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[i]+=(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_1(unsigned int n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_2(unsigned int n, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[i]=(x[i])*(alpha)+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_2(unsigned int n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_3(unsigned int n, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[i]+=(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void axpy_3(unsigned int n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_4(unsigned int n, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[i]=(alpha)*(x[i])+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_4(unsigned int n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_1(unsigned int n, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[i]+=(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_1(unsigned int n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_2(unsigned int n, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[i]=(x[i])*(alpha)+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_2(unsigned int n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_3(unsigned int n, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[i]+=(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void axpy_3(unsigned int n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_4(unsigned int n, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[i]=(alpha)*(x[i])+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_4(unsigned int n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_1(int n, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[i]+=(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_1(int n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_2(int n, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[i]=(x[i])*(alpha)+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_2(int n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_3(int n, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[i]+=(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void axpy_3(int n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_4(int n, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[i]=(alpha)*(x[i])+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_4(int n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_1(int n, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[i]+=(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_1(int n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_2(int n, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[i]=(x[i])*(alpha)+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_2(int n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_3(int n, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[i]+=(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void axpy_3(int n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_4(int n, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[i]=(alpha)*(x[i])+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_4(int n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_1(unsigned long n, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[i]+=(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_1(unsigned long n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_2(unsigned long n, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[i]=(x[i])*(alpha)+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_2(unsigned long n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_3(unsigned long n, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[i]+=(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void axpy_3(unsigned long n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_4(unsigned long n, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[i]=(alpha)*(x[i])+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_4(unsigned long n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_1(unsigned long n, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[i]+=(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_1(unsigned long n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_2(unsigned long n, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[i]=(x[i])*(alpha)+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_2(unsigned long n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_3(unsigned long n, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[i]+=(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void axpy_3(unsigned long n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_4(unsigned long n, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[i]=(alpha)*(x[i])+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_4(unsigned long n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_1(long n, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[i]+=(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_1(long n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_2(long n, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[i]=(x[i])*(alpha)+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_2(long n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_3(long n, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[i]+=(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void axpy_3(long n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_4(long n, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[i]=(alpha)*(x[i])+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_4(long n, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_1(long n, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[i]+=(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_1(long n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_2(long n, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[i]=(x[i])*(alpha)+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_2(long n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_3(long n, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[i]+=(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void axpy_3(long n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_4(long n, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[i]=(alpha)*(x[i])+y[i] ;
} 
}
} = {
#include <stdio.h>
void axpy_4(long n, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_1(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_1(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_2(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(incx)*(i)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_2(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_3(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_3(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_4(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(incx)*(i)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_4(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_5(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_5(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_6(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(i)*(incx)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_6(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_7(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_7(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_8(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(i)*(incx)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_8(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_9(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_9(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_10(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(incx)*(i)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_10(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_11(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_11(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_12(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(incx)*(i)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_12(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_13(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_13(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_14(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(i)*(incx)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_14(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_15(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_15(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_16(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(i)*(incx)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_16(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_1(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_1(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_2(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(incx)*(i)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_2(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_3(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_3(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_4(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(incx)*(i)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_4(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_5(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_5(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_6(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(i)*(incx)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_6(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_7(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_7(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_8(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(i)*(incx)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_8(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_9(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_9(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_10(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(incx)*(i)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_10(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_11(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_11(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_12(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(incx)*(i)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_12(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_13(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_13(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_14(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(i)*(incx)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_14(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_15(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_15(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_16(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(i)*(incx)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_16(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_1(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_1(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_2(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(incx)*(i)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_2(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_3(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_3(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_4(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(incx)*(i)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_4(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_5(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_5(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_6(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(i)*(incx)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_6(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_7(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_7(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_8(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(i)*(incx)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_8(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_9(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_9(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_10(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(incx)*(i)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_10(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_11(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_11(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_12(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(incx)*(i)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_12(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_13(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_13(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_14(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(i)*(incx)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_14(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_15(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_15(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_16(int n, int incx, int incy, float *x, float *y, float alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(i)*(incx)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_16(int n, int incx, int incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_1(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_1(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_2(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(incx)*(i)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_2(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_3(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_3(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_4(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(incx)*(i)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_4(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_5(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_5(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_6(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(i)*(incx)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_6(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_7(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_7(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_8(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(i)*(incx)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_8(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_9(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_9(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_10(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(incx)*(i)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_10(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_11(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_11(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_12(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(incx)*(i)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_12(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_13(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_13(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_14(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(i)*(incx)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_14(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_15(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_15(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_16(int n, int incx, int incy, double *x, double *y, double alpha){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(i)*(incx)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_16(int n, int incx, int incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_1(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_1(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_2(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(incx)*(i)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_2(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_3(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_3(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_4(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(incx)*(i)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_4(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_5(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_5(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_6(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(i)*(incx)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_6(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_7(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_7(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_8(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(i)*(incx)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_8(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_9(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_9(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_10(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(incx)*(i)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_10(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_11(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_11(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_12(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(incx)*(i)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_12(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_13(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_13(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_14(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(i)*(incx)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_14(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_15(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_15(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_16(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(i)*(incx)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_16(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_1(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_1(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_2(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(incx)*(i)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_2(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_3(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_3(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_4(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(incx)*(i)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_4(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_5(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_5(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_6(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(i)*(incx)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_6(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_7(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_7(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_8(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(i)*(incx)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_8(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_9(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_9(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_10(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(incx)*(i)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_10(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_11(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_11(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_12(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(incx)*(i)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_12(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_13(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_13(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_14(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(i)*(incx)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_14(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_15(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_15(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_16(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(i)*(incx)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_16(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_1(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_1(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_2(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(incx)*(i)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_2(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_3(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_3(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_4(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(incx)*(i)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_4(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_5(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_5(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_6(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(i)*(incx)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_6(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_7(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_7(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_8(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(i)*(incx)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_8(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_9(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_9(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_10(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(incx)*(i)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_10(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_11(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_11(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_12(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(incx)*(i)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_12(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_13(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_13(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_14(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(i)*(incx)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_14(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_15(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_15(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_16(long n, long incx, long incy, float *x, float *y, float alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(i)*(incx)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_16(long n, long incx, long incy, float *x, float *y, float alpha){
 
printf("saxpy substituted\n") ;
 
}
}
c {
void axpy_inc_1(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_1(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_2(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(incx)*(i)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_2(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_3(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_3(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_4(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(incx)*(i)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_4(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_5(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_5(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_6(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(x[(i)*(incx)])*(alpha)+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_6(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_7(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_7(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_8(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)]=(alpha)*(x[(i)*(incx)])+y[(incy)*(i)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_8(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_9(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_9(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_10(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(incx)*(i)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_10(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_11(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_11(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_12(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(incx)*(i)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_12(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_13(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_13(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_14(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(x[(i)*(incx)])*(alpha)+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_14(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_15(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]+=(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_15(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
c {
void axpy_inc_16(long n, long incx, long incy, double *x, double *y, double alpha){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)]=(alpha)*(x[(i)*(incx)])+y[(i)*(incy)] ;
} 
}
} = {
#include <stdio.h>
void axpy_inc_16(long n, long incx, long incy, double *x, double *y, double alpha){
 
printf("daxpy substituted\n") ;
 
}
}
