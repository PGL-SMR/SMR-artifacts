c {
void copy_1(unsigned int n, float *x, float *y){
unsigned int i;
for(i=0;i<n;++i) {
y[i] =x[i] ;
} 
}
} = {
#include <stdio.h>
void copy_1(unsigned int n, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_1(unsigned int n, double *x, double *y){
unsigned int i;
for(i=0;i<n;++i) {
y[i] =x[i] ;
} 
}
} = {
#include <stdio.h>
void copy_1(unsigned int n, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_1(int n, float *x, float *y){
int i;
for(i=0;i<n;++i) {
y[i] =x[i] ;
} 
}
} = {
#include <stdio.h>
void copy_1(int n, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_1(int n, double *x, double *y){
int i;
for(i=0;i<n;++i) {
y[i] =x[i] ;
} 
}
} = {
#include <stdio.h>
void copy_1(int n, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_1(unsigned long n, float *x, float *y){
unsigned long i;
for(i=0;i<n;++i) {
y[i] =x[i] ;
} 
}
} = {
#include <stdio.h>
void copy_1(unsigned long n, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_1(unsigned long n, double *x, double *y){
unsigned long i;
for(i=0;i<n;++i) {
y[i] =x[i] ;
} 
}
} = {
#include <stdio.h>
void copy_1(unsigned long n, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_1(long n, float *x, float *y){
long i;
for(i=0;i<n;++i) {
y[i] =x[i] ;
} 
}
} = {
#include <stdio.h>
void copy_1(long n, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_1(long n, double *x, double *y){
long i;
for(i=0;i<n;++i) {
y[i] =x[i] ;
} 
}
} = {
#include <stdio.h>
void copy_1(long n, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_1(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_1(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_2(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_2(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_3(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_3(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_4(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_4(unsigned int n, unsigned int incx, unsigned int incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_1(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_1(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_2(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y){
unsigned int i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_2(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_3(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_3(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_4(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y){
unsigned int i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_4(unsigned int n, unsigned int incx, unsigned int incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_1(int n, int incx, int incy, float *x, float *y){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_1(int n, int incx, int incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_2(int n, int incx, int incy, float *x, float *y){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_2(int n, int incx, int incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_3(int n, int incx, int incy, float *x, float *y){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_3(int n, int incx, int incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_4(int n, int incx, int incy, float *x, float *y){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_4(int n, int incx, int incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_1(int n, int incx, int incy, double *x, double *y){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_1(int n, int incx, int incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_2(int n, int incx, int incy, double *x, double *y){
int i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_2(int n, int incx, int incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_3(int n, int incx, int incy, double *x, double *y){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_3(int n, int incx, int incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_4(int n, int incx, int incy, double *x, double *y){
int i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_4(int n, int incx, int incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_1(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_1(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_2(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_2(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_3(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_3(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_4(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_4(unsigned long n, unsigned long incx, unsigned long incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_1(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_1(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_2(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y){
unsigned long i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_2(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_3(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_3(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_4(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y){
unsigned long i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_4(unsigned long n, unsigned long incx, unsigned long incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_1(long n, long incx, long incy, float *x, float *y){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_1(long n, long incx, long incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_2(long n, long incx, long incy, float *x, float *y){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_2(long n, long incx, long incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_3(long n, long incx, long incy, float *x, float *y){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_3(long n, long incx, long incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_4(long n, long incx, long incy, float *x, float *y){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_4(long n, long incx, long incy, float *x, float *y){
 
printf("scopy substituted\n") ;
 
}
}
c {
void copy_inc_1(long n, long incx, long incy, double *x, double *y){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_1(long n, long incx, long incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_2(long n, long incx, long incy, double *x, double *y){
long i;
for(i=0;i<n;++i) {
y[(incy)*(i)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_2(long n, long incx, long incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_3(long n, long incx, long incy, double *x, double *y){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(incx)*(i)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_3(long n, long incx, long incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
c {
void copy_inc_4(long n, long incx, long incy, double *x, double *y){
long i;
for(i=0;i<n;++i) {
y[(i)*(incy)] =x[(i)*(incx)] ;
} 
}
} = {
#include <stdio.h>
void copy_inc_4(long n, long incx, long incy, double *x, double *y){
 
printf("dcopy substituted\n") ;
 
}
}
