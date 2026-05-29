c {
void scal_1(unsigned int n, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[i] =(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_1(unsigned int n, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_2(unsigned int n, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[i] =(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void scal_2(unsigned int n, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_1(unsigned int n, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[i] =(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_1(unsigned int n, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_2(unsigned int n, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[i] =(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void scal_2(unsigned int n, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_1(int n, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[i] =(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_1(int n, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_2(int n, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[i] =(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void scal_2(int n, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_1(int n, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[i] =(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_1(int n, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_2(int n, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[i] =(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void scal_2(int n, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_1(unsigned long n, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[i] =(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_1(unsigned long n, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_2(unsigned long n, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[i] =(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void scal_2(unsigned long n, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_1(unsigned long n, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[i] =(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_1(unsigned long n, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_2(unsigned long n, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[i] =(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void scal_2(unsigned long n, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_1(long n, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[i] =(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_1(long n, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_2(long n, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[i] =(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void scal_2(long n, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_1(long n, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[i] =(x[i])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_1(long n, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_2(long n, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[i] =(alpha)*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void scal_2(long n, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal2_1(unsigned int n, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[i] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_1(unsigned int n, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal2_1(unsigned int n, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[i] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_1(unsigned int n, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal2_1(int n, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[i] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_1(int n, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal2_1(int n, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[i] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_1(int n, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal2_1(unsigned long n, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[i] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_1(unsigned long n, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal2_1(unsigned long n, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[i] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_1(unsigned long n, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal2_1(long n, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[i] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_1(long n, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal2_1(long n, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[i] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_1(long n, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_1(unsigned int n, unsigned int incx, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_1(unsigned int n, unsigned int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_2(unsigned int n, unsigned int incx, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_2(unsigned int n, unsigned int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_3(unsigned int n, unsigned int incx, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_3(unsigned int n, unsigned int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_4(unsigned int n, unsigned int incx, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_4(unsigned int n, unsigned int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_5(unsigned int n, unsigned int incx, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_5(unsigned int n, unsigned int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_6(unsigned int n, unsigned int incx, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_6(unsigned int n, unsigned int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_7(unsigned int n, unsigned int incx, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_7(unsigned int n, unsigned int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_8(unsigned int n, unsigned int incx, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_8(unsigned int n, unsigned int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_1(unsigned int n, unsigned int incx, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_1(unsigned int n, unsigned int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_2(unsigned int n, unsigned int incx, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_2(unsigned int n, unsigned int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_3(unsigned int n, unsigned int incx, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_3(unsigned int n, unsigned int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_4(unsigned int n, unsigned int incx, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_4(unsigned int n, unsigned int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_5(unsigned int n, unsigned int incx, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_5(unsigned int n, unsigned int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_6(unsigned int n, unsigned int incx, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_6(unsigned int n, unsigned int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_7(unsigned int n, unsigned int incx, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_7(unsigned int n, unsigned int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_8(unsigned int n, unsigned int incx, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_8(unsigned int n, unsigned int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_1(int n, int incx, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_1(int n, int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_2(int n, int incx, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_2(int n, int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_3(int n, int incx, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_3(int n, int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_4(int n, int incx, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_4(int n, int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_5(int n, int incx, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_5(int n, int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_6(int n, int incx, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_6(int n, int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_7(int n, int incx, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_7(int n, int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_8(int n, int incx, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_8(int n, int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_1(int n, int incx, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_1(int n, int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_2(int n, int incx, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_2(int n, int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_3(int n, int incx, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_3(int n, int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_4(int n, int incx, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_4(int n, int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_5(int n, int incx, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_5(int n, int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_6(int n, int incx, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_6(int n, int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_7(int n, int incx, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_7(int n, int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_8(int n, int incx, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_8(int n, int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_1(unsigned long n, unsigned long incx, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_1(unsigned long n, unsigned long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_2(unsigned long n, unsigned long incx, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_2(unsigned long n, unsigned long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_3(unsigned long n, unsigned long incx, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_3(unsigned long n, unsigned long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_4(unsigned long n, unsigned long incx, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_4(unsigned long n, unsigned long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_5(unsigned long n, unsigned long incx, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_5(unsigned long n, unsigned long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_6(unsigned long n, unsigned long incx, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_6(unsigned long n, unsigned long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_7(unsigned long n, unsigned long incx, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_7(unsigned long n, unsigned long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_8(unsigned long n, unsigned long incx, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_8(unsigned long n, unsigned long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_1(unsigned long n, unsigned long incx, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_1(unsigned long n, unsigned long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_2(unsigned long n, unsigned long incx, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_2(unsigned long n, unsigned long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_3(unsigned long n, unsigned long incx, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_3(unsigned long n, unsigned long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_4(unsigned long n, unsigned long incx, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_4(unsigned long n, unsigned long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_5(unsigned long n, unsigned long incx, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_5(unsigned long n, unsigned long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_6(unsigned long n, unsigned long incx, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_6(unsigned long n, unsigned long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_7(unsigned long n, unsigned long incx, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_7(unsigned long n, unsigned long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_8(unsigned long n, unsigned long incx, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_8(unsigned long n, unsigned long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_1(long n, long incx, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_1(long n, long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_2(long n, long incx, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_2(long n, long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_3(long n, long incx, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_3(long n, long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_4(long n, long incx, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_4(long n, long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_5(long n, long incx, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_5(long n, long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_6(long n, long incx, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_6(long n, long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_7(long n, long incx, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_7(long n, long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_8(long n, long incx, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_8(long n, long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_inc_1(long n, long incx, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_1(long n, long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_2(long n, long incx, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_2(long n, long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_3(long n, long incx, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_3(long n, long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_4(long n, long incx, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_4(long n, long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_5(long n, long incx, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(incx)*(i)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_5(long n, long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_6(long n, long incx, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_6(long n, long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_7(long n, long incx, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(x[(i)*(incx)])*(alpha) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_7(long n, long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_inc_8(long n, long incx, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] =(alpha)*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void scal_inc_8(long n, long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal2_inc_1(unsigned int n, unsigned int incx, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_1(unsigned int n, unsigned int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal2_inc_2(unsigned int n, unsigned int incx, float *x, float alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_2(unsigned int n, unsigned int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal2_inc_1(unsigned int n, unsigned int incx, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_1(unsigned int n, unsigned int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal2_inc_2(unsigned int n, unsigned int incx, double *x, double alpha){
unsigned int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_2(unsigned int n, unsigned int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal2_inc_1(int n, int incx, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_1(int n, int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal2_inc_2(int n, int incx, float *x, float alpha){
int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_2(int n, int incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal2_inc_1(int n, int incx, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[(incx)*(i)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_1(int n, int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal2_inc_2(int n, int incx, double *x, double alpha){
int i;
for(i=0;i<n;++i) {
x[(i)*(incx)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_2(int n, int incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal2_inc_1(unsigned long n, unsigned long incx, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_1(unsigned long n, unsigned long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal2_inc_2(unsigned long n, unsigned long incx, float *x, float alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_2(unsigned long n, unsigned long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal2_inc_1(unsigned long n, unsigned long incx, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_1(unsigned long n, unsigned long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal2_inc_2(unsigned long n, unsigned long incx, double *x, double alpha){
unsigned long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_2(unsigned long n, unsigned long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal2_inc_1(long n, long incx, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_1(long n, long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal2_inc_2(long n, long incx, float *x, float alpha){
long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_2(long n, long incx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal2_inc_1(long n, long incx, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[(incx)*(i)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_1(long n, long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal2_inc_2(long n, long incx, double *x, double alpha){
long i;
for(i=0;i<n;++i) {
x[(i)*(incx)] *=alpha;
} 
}
} = {
#include <stdio.h>
void scal2_inc_2(long n, long incx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_1(unsigned int m, unsigned int n, unsigned int ldx, float *x, float alpha){
unsigned int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(mm)*(ldx)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_1(unsigned int m, unsigned int n, unsigned int ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_2(unsigned int m, unsigned int n, unsigned int ldx, float *x, float alpha){
unsigned int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(mm)*(ldx)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_2(unsigned int m, unsigned int n, unsigned int ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_3(unsigned int m, unsigned int n, unsigned int ldx, float *x, float alpha){
unsigned int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(ldx)*(mm)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_3(unsigned int m, unsigned int n, unsigned int ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_4(unsigned int m, unsigned int n, unsigned int ldx, float *x, float alpha){
unsigned int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(ldx)*(mm)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_4(unsigned int m, unsigned int n, unsigned int ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_1(unsigned int m, unsigned int n, unsigned int ldx, double *x, double alpha){
unsigned int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(mm)*(ldx)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_1(unsigned int m, unsigned int n, unsigned int ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_2(unsigned int m, unsigned int n, unsigned int ldx, double *x, double alpha){
unsigned int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(mm)*(ldx)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_2(unsigned int m, unsigned int n, unsigned int ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_3(unsigned int m, unsigned int n, unsigned int ldx, double *x, double alpha){
unsigned int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(ldx)*(mm)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_3(unsigned int m, unsigned int n, unsigned int ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_4(unsigned int m, unsigned int n, unsigned int ldx, double *x, double alpha){
unsigned int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(ldx)*(mm)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_4(unsigned int m, unsigned int n, unsigned int ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_1(int m, int n, int ldx, float *x, float alpha){
int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(mm)*(ldx)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_1(int m, int n, int ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_2(int m, int n, int ldx, float *x, float alpha){
int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(mm)*(ldx)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_2(int m, int n, int ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_3(int m, int n, int ldx, float *x, float alpha){
int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(ldx)*(mm)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_3(int m, int n, int ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_4(int m, int n, int ldx, float *x, float alpha){
int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(ldx)*(mm)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_4(int m, int n, int ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_1(int m, int n, int ldx, double *x, double alpha){
int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(mm)*(ldx)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_1(int m, int n, int ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_2(int m, int n, int ldx, double *x, double alpha){
int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(mm)*(ldx)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_2(int m, int n, int ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_3(int m, int n, int ldx, double *x, double alpha){
int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(ldx)*(mm)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_3(int m, int n, int ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_4(int m, int n, int ldx, double *x, double alpha){
int mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(ldx)*(mm)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_4(int m, int n, int ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_1(unsigned long m, unsigned long n, unsigned long ldx, float *x, float alpha){
unsigned long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(mm)*(ldx)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_1(unsigned long m, unsigned long n, unsigned long ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_2(unsigned long m, unsigned long n, unsigned long ldx, float *x, float alpha){
unsigned long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(mm)*(ldx)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_2(unsigned long m, unsigned long n, unsigned long ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_3(unsigned long m, unsigned long n, unsigned long ldx, float *x, float alpha){
unsigned long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(ldx)*(mm)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_3(unsigned long m, unsigned long n, unsigned long ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_4(unsigned long m, unsigned long n, unsigned long ldx, float *x, float alpha){
unsigned long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(ldx)*(mm)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_4(unsigned long m, unsigned long n, unsigned long ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_1(unsigned long m, unsigned long n, unsigned long ldx, double *x, double alpha){
unsigned long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(mm)*(ldx)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_1(unsigned long m, unsigned long n, unsigned long ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_2(unsigned long m, unsigned long n, unsigned long ldx, double *x, double alpha){
unsigned long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(mm)*(ldx)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_2(unsigned long m, unsigned long n, unsigned long ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_3(unsigned long m, unsigned long n, unsigned long ldx, double *x, double alpha){
unsigned long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(ldx)*(mm)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_3(unsigned long m, unsigned long n, unsigned long ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_4(unsigned long m, unsigned long n, unsigned long ldx, double *x, double alpha){
unsigned long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(ldx)*(mm)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_4(unsigned long m, unsigned long n, unsigned long ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_1(long m, long n, long ldx, float *x, float alpha){
long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(mm)*(ldx)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_1(long m, long n, long ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_2(long m, long n, long ldx, float *x, float alpha){
long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(mm)*(ldx)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_2(long m, long n, long ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_3(long m, long n, long ldx, float *x, float alpha){
long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(ldx)*(mm)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_3(long m, long n, long ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_4(long m, long n, long ldx, float *x, float alpha){
long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(ldx)*(mm)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_4(long m, long n, long ldx, float *x, float alpha){
 
printf("sscal substituted\n") ;
 
}
}
c {
void scal_matrix_1(long m, long n, long ldx, double *x, double alpha){
long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(mm)*(ldx)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_1(long m, long n, long ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_2(long m, long n, long ldx, double *x, double alpha){
long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(mm)*(ldx)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_2(long m, long n, long ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_3(long m, long n, long ldx, double *x, double alpha){
long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[nn+(ldx)*(mm)] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_3(long m, long n, long ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
c {
void scal_matrix_4(long m, long n, long ldx, double *x, double alpha){
long mm,nn;
for(mm=0;mm<m;++mm) {
for(nn=0;nn<n;++nn) {
x[(ldx)*(mm)+nn] *=alpha;
} 
} 
}
} = {
#include <stdio.h>
void scal_matrix_4(long m, long n, long ldx, double *x, double alpha){
 
printf("dscal substituted\n") ;
 
}
}
