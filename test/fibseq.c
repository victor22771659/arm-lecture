#include <stdio.h>

int fibonacci(int x);

int main(int argc,char **argv){
	int number=0;
	int result=0;

	scanf("%d",&number);
	result=fibonacci(number);
	printf("The fibonacci sequence at %d is: %d\n");
}

int fibonacci(int x){
	if(x==1)
		return 1;
	else if(x<=0)
		return 0;
	else
		return fibonacci(x-1)+fibonacci(x-2);
}
