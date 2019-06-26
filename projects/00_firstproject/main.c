#include <stdio.h>

int main(int argc, char *argv[])
{
	int A;
	int B;

	if(scanf("%d %d",&A,&B) == 2){
		int C = A + B;
		printf("Total of %d booties\n",C);   
	} else {
		printf("Sorry for not giving you instructions, you were supposed to input two integers\n"); 
	}

	return 0;
}
