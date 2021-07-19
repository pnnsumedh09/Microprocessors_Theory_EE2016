#include <stdio.h>
#include <math.h>
int fun2(int *v,int d);
int n=7;
int A[10]={1,4,5,23,34,45,56,67,78,89}; 
int main(){
	printf("%d\n",fun2(A,10));
}

/***************
Instructions:
Compiling for question1 : arm-linux-gnueabi-gcc -static -g -o prog main_ee19b047.c funq1_ee19b047.s
			   ./prog

Before compiling for question2 change:
1) int fun(int *v,int d); to int fun2(int *v,int d); in line 3
2) printf("%d\n",fun2(A,10)); to printf("%d\n",fun2(A,10)); in line 7

Compiling for question2 : arm-linux-gnueabi-gcc -static -g -o prog main_ee19b047.c funq2_ee19b047.s
			   ./prog

OS: Ubuntu 20.04
*****************/
