c {
void gemv_1(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+i*n]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_1(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_2(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+i*n]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_2(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_3(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+i*n] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_3(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_4(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+i*n]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_4(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_5(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[i*n+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_5(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_6(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[i*n+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_6(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_7(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[i*n+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_7(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_8(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[i*n+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_8(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_9(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+n*i]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_9(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_10(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+n*i]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_10(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_11(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+n*i] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_11(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_12(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+n*i]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_12(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_13(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[n*i+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_13(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_14(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[n*i+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_14(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_15(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[n*i+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_15(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_16(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[n*i+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_16(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_1(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+i*n]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_1(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_2(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+i*n]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_2(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_3(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+i*n] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_3(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_4(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+i*n]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_4(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_5(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[i*n+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_5(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_6(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[i*n+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_6(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_7(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[i*n+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_7(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_8(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[i*n+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_8(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_9(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+n*i]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_9(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_10(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+n*i]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_10(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_11(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+n*i] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_11(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_12(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+n*i]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_12(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_13(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[n*i+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_13(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_14(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[n*i+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_14(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_15(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[n*i+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_15(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_16(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[n*i+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_16(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_1(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+i*n]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_1(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_2(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+i*n]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_2(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_3(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+i*n] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_3(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_4(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+i*n]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_4(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_5(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[i*n+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_5(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_6(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[i*n+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_6(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_7(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[i*n+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_7(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_8(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[i*n+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_8(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_9(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+n*i]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_9(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_10(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+n*i]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_10(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_11(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+n*i] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_11(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_12(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+n*i]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_12(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_13(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[n*i+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_13(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_14(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[n*i+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_14(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_15(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[n*i+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_15(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_16(int n, float *A, float *X, float *Y){
int i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[n*i+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_16(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_1(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+i*n]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_1(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_2(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+i*n]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_2(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_3(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+i*n] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_3(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_4(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+i*n]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_4(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_5(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[i*n+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_5(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_6(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[i*n+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_6(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_7(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[i*n+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_7(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_8(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[i*n+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_8(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_9(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+n*i]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_9(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_10(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+n*i]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_10(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_11(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+n*i] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_11(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_12(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+n*i]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_12(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_13(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[n*i+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_13(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_14(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[n*i+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_14(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_15(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[n*i+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_15(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_16(int n, double *A, double *X, double *Y){
int i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[n*i+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_16(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_1(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+i*n]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_1(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_2(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+i*n]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_2(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_3(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+i*n] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_3(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_4(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+i*n]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_4(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_5(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[i*n+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_5(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_6(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[i*n+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_6(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_7(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[i*n+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_7(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_8(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[i*n+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_8(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_9(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+n*i]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_9(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_10(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+n*i]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_10(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_11(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+n*i] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_11(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_12(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+n*i]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_12(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_13(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[n*i+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_13(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_14(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[n*i+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_14(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_15(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[n*i+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_15(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_16(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[n*i+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_16(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_1(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+i*n]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_1(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_2(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+i*n]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_2(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_3(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+i*n] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_3(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_4(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+i*n]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_4(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_5(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[i*n+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_5(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_6(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[i*n+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_6(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_7(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[i*n+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_7(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_8(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[i*n+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_8(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_9(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+n*i]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_9(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_10(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+n*i]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_10(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_11(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+n*i] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_11(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_12(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+n*i]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_12(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_13(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[n*i+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_13(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_14(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[n*i+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_14(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_15(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[n*i+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_15(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_16(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[n*i+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_16(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_1(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+i*n]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_1(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_2(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+i*n]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_2(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_3(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+i*n] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_3(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_4(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+i*n]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_4(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_5(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[i*n+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_5(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_6(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[i*n+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_6(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_7(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[i*n+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_7(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_8(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[i*n+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_8(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_9(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+n*i]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_9(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_10(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+n*i]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_10(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_11(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+n*i] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_11(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_12(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+n*i]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_12(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_13(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[n*i+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_13(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_14(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[n*i+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_14(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_15(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[n*i+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_15(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_16(long n, float *A, float *X, float *Y){
long i,j;
float y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[n*i+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_16(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv_1(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+i*n]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_1(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_2(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+i*n]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_2(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_3(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+i*n] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_3(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_4(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+i*n]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_4(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_5(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[i*n+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_5(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_6(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[i*n+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_6(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_7(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[i*n+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_7(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_8(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[i*n+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_8(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_9(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[j+n*i]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_9(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_10(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[j+n*i]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_10(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_11(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[j+n*i] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_11(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_12(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[j+n*i]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_12(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_13(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=A[n*i+j]*X[j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_13(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_14(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=A[n*i+j]*X[j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_14(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_15(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y+=X[j]*A[n*i+j] ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_15(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv_16(long n, double *A, double *X, double *Y){
long i,j;
double y;
for(i=0;i<n;++i) {
y=Y[i] ;
for(j=0;j<n;++j) {
y=X[j]*A[n*i+j]+y ;
} 
Y[i] =y;
} 
}
} = {
#include <stdio.h>
void gemv_16(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_1(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+i*n]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_1(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_2(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+i*n]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_2(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_3(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+i*n] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_3(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_4(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+i*n]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_4(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_5(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[i*n+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_5(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_6(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[i*n+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_6(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_7(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[i*n+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_7(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_8(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[i*n+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_8(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_9(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+n*i]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_9(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_10(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+n*i]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_10(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_11(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+n*i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_11(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_12(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+n*i]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_12(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_13(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[n*i+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_13(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_14(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[n*i+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_14(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_15(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[n*i+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_15(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_16(unsigned int n, float *A, float *X, float *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[n*i+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_16(unsigned int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_1(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+i*n]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_1(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_2(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+i*n]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_2(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_3(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+i*n] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_3(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_4(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+i*n]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_4(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_5(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[i*n+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_5(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_6(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[i*n+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_6(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_7(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[i*n+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_7(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_8(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[i*n+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_8(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_9(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+n*i]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_9(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_10(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+n*i]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_10(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_11(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+n*i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_11(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_12(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+n*i]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_12(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_13(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[n*i+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_13(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_14(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[n*i+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_14(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_15(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[n*i+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_15(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_16(unsigned int n, double *A, double *X, double *Y){
unsigned int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[n*i+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_16(unsigned int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_1(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+i*n]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_1(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_2(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+i*n]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_2(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_3(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+i*n] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_3(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_4(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+i*n]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_4(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_5(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[i*n+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_5(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_6(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[i*n+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_6(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_7(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[i*n+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_7(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_8(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[i*n+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_8(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_9(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+n*i]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_9(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_10(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+n*i]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_10(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_11(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+n*i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_11(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_12(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+n*i]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_12(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_13(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[n*i+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_13(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_14(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[n*i+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_14(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_15(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[n*i+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_15(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_16(int n, float *A, float *X, float *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[n*i+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_16(int n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_1(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+i*n]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_1(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_2(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+i*n]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_2(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_3(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+i*n] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_3(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_4(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+i*n]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_4(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_5(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[i*n+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_5(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_6(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[i*n+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_6(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_7(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[i*n+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_7(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_8(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[i*n+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_8(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_9(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+n*i]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_9(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_10(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+n*i]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_10(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_11(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+n*i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_11(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_12(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+n*i]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_12(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_13(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[n*i+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_13(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_14(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[n*i+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_14(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_15(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[n*i+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_15(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_16(int n, double *A, double *X, double *Y){
int i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[n*i+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_16(int n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_1(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+i*n]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_1(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_2(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+i*n]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_2(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_3(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+i*n] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_3(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_4(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+i*n]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_4(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_5(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[i*n+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_5(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_6(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[i*n+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_6(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_7(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[i*n+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_7(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_8(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[i*n+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_8(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_9(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+n*i]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_9(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_10(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+n*i]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_10(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_11(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+n*i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_11(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_12(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+n*i]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_12(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_13(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[n*i+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_13(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_14(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[n*i+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_14(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_15(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[n*i+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_15(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_16(unsigned long n, float *A, float *X, float *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[n*i+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_16(unsigned long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_1(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+i*n]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_1(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_2(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+i*n]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_2(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_3(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+i*n] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_3(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_4(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+i*n]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_4(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_5(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[i*n+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_5(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_6(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[i*n+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_6(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_7(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[i*n+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_7(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_8(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[i*n+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_8(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_9(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+n*i]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_9(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_10(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+n*i]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_10(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_11(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+n*i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_11(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_12(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+n*i]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_12(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_13(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[n*i+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_13(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_14(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[n*i+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_14(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_15(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[n*i+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_15(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_16(unsigned long n, double *A, double *X, double *Y){
unsigned long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[n*i+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_16(unsigned long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_1(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+i*n]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_1(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_2(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+i*n]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_2(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_3(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+i*n] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_3(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_4(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+i*n]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_4(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_5(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[i*n+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_5(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_6(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[i*n+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_6(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_7(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[i*n+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_7(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_8(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[i*n+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_8(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_9(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+n*i]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_9(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_10(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+n*i]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_10(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_11(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+n*i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_11(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_12(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+n*i]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_12(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_13(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[n*i+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_13(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_14(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[n*i+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_14(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_15(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[n*i+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_15(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_16(long n, float *A, float *X, float *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[n*i+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_16(long n, float *A, float *X, float *Y){
 
printf("sgemv substituted\n") ;
 
}
}
c {
void gemv2_1(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+i*n]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_1(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_2(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+i*n]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_2(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_3(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+i*n] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_3(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_4(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+i*n]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_4(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_5(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[i*n+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_5(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_6(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[i*n+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_6(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_7(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[i*n+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_7(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_8(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[i*n+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_8(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_9(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[j+n*i]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_9(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_10(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[j+n*i]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_10(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_11(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[j+n*i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_11(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_12(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[j+n*i]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_12(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_13(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=A[n*i+j]*X[j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_13(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_14(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=A[n*i+j]*X[j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_14(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_15(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]+=X[j]*A[n*i+j] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_15(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
c {
void gemv2_16(long n, double *A, double *X, double *Y){
long i,j;
for(i=0;i<n;++i) {
for(j=0;j<n;++j) {
Y[i]=X[j]*A[n*i+j]+Y[i] ;
} 
} 
}
} = {
#include <stdio.h>
void gemv2_16(long n, double *A, double *X, double *Y){
 
printf("dgemv substituted\n") ;
 
}
}
