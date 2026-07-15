c {
void dot_1(unsigned int n, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(x[i])*(y[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_1(unsigned int n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_2(unsigned int n, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(x[i])*(y[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_2(unsigned int n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_3(unsigned int n, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(y[i])*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_3(unsigned int n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_4(unsigned int n, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(y[i])*(x[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_4(unsigned int n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_1(unsigned int n, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(x[i])*(y[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_1(unsigned int n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_2(unsigned int n, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(x[i])*(y[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_2(unsigned int n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_3(unsigned int n, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(y[i])*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_3(unsigned int n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_4(unsigned int n, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(y[i])*(x[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_4(unsigned int n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_1(int n, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(x[i])*(y[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_1(int n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_2(int n, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(x[i])*(y[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_2(int n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_3(int n, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(y[i])*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_3(int n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_4(int n, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(y[i])*(x[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_4(int n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_1(int n, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(x[i])*(y[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_1(int n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_2(int n, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(x[i])*(y[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_2(int n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_3(int n, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(y[i])*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_3(int n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_4(int n, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(y[i])*(x[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_4(int n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_1(unsigned long n, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(x[i])*(y[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_1(unsigned long n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_2(unsigned long n, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(x[i])*(y[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_2(unsigned long n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_3(unsigned long n, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(y[i])*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_3(unsigned long n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_4(unsigned long n, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(y[i])*(x[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_4(unsigned long n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_1(unsigned long n, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(x[i])*(y[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_1(unsigned long n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_2(unsigned long n, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(x[i])*(y[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_2(unsigned long n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_3(unsigned long n, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(y[i])*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_3(unsigned long n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_4(unsigned long n, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(y[i])*(x[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_4(unsigned long n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_1(long n, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(x[i])*(y[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_1(long n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_2(long n, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(x[i])*(y[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_2(long n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_3(long n, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(y[i])*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_3(long n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_4(long n, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(y[i])*(x[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_4(long n, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_1(long n, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(x[i])*(y[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_1(long n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_2(long n, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(x[i])*(y[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_2(long n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_3(long n, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(y[i])*(x[i]) ;
} 
}
} = {
#include <stdio.h>
void dot_3(long n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_4(long n, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(y[i])*(x[i])+out ;
} 
}
} = {
#include <stdio.h>
void dot_4(long n, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_1(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_1(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_2(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_2(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_3(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_3(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_4(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_4(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_5(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_5(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_6(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_6(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_7(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_7(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_8(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_8(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_9(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_9(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_10(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_10(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_11(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_11(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_12(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_12(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_13(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_13(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_14(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_14(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_15(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_15(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_16(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_16(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_1(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_1(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_2(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_2(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_3(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_3(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_4(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_4(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_5(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_5(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_6(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_6(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_7(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_7(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_8(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_8(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_9(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_9(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_10(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_10(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_11(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_11(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_12(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_12(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_13(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_13(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_14(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_14(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_15(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_15(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_16(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
out=0 ;
unsigned int i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_16(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_1(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_1(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_2(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_2(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_3(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_3(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_4(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_4(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_5(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_5(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_6(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_6(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_7(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_7(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_8(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_8(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_9(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_9(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_10(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_10(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_11(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_11(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_12(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_12(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_13(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_13(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_14(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_14(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_15(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_15(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_16(int n, int incx, int incy, float *x, float *y, float out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_16(int n, int incx, int incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_1(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_1(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_2(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_2(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_3(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_3(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_4(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_4(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_5(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_5(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_6(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_6(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_7(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_7(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_8(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_8(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_9(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_9(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_10(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_10(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_11(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_11(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_12(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_12(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_13(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_13(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_14(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_14(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_15(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_15(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_16(int n, int incx, int incy, double *x, double *y, double out){
out=0 ;
int i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_16(int n, int incx, int incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_1(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_1(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_2(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_2(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_3(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_3(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_4(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_4(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_5(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_5(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_6(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_6(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_7(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_7(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_8(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_8(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_9(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_9(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_10(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_10(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_11(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_11(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_12(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_12(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_13(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_13(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_14(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_14(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_15(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_15(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_16(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_16(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_1(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_1(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_2(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_2(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_3(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_3(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_4(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_4(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_5(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_5(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_6(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_6(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_7(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_7(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_8(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_8(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_9(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_9(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_10(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_10(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_11(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_11(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_12(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_12(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_13(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_13(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_14(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_14(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_15(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_15(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_16(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
out=0 ;
unsigned long i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_16(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_1(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_1(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_2(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_2(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_3(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_3(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_4(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_4(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_5(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_5(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_6(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_6(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_7(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_7(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_8(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_8(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_9(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_9(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_10(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_10(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_11(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_11(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_12(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_12(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_13(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_13(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_14(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_14(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_15(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_15(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_16(long n, long incx, long incy, float *x, float *y, float out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_16(long n, long incx, long incy, float *x, float *y, float out){
 
printf("sdot substituted\n") ;
 
}
}
c {
void dot_inc_1(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_1(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_2(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_2(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_3(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_3(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_4(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_4(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_5(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(x[(incx)*(i)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_5(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_6(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(x[(incx)*(i)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_6(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_7(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(incx)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_7(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_8(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(incx)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_8(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_9(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(incy)*(i)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_9(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_10(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(incy)*(i)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_10(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_11(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(y[(incy)*(i)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_11(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_12(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(y[(incy)*(i)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_12(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_13(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(x[(i)*(incx)])*(y[(i)*(incy)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_13(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_14(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(x[(i)*(incx)])*(y[(i)*(incy)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_14(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_15(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out+=(y[(i)*(incy)])*(x[(i)*(incx)]) ;
} 
}
} = {
#include <stdio.h>
void dot_inc_15(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
c {
void dot_inc_16(long n, long incx, long incy, double *x, double *y, double out){
out=0 ;
long i;
for(i=0;i<n;++i) {
out=(y[(i)*(incy)])*(x[(i)*(incx)])+out ;
} 
}
} = {
#include <stdio.h>
void dot_inc_16(long n, long incx, long incy, double *x, double *y, double out){
 
printf("ddot substituted\n") ;
 
}
}
