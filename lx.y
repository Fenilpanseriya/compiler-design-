%{
/* Definition section */
#include<stdio.h>
int flag=0;
%}

%token NUMBER

/* Rule Section */
%%

ArithmeticExpression: E{

		printf("\nANU NU ANVIYA DAL = %d HASE\n", $$);

		return 0;
};

E:E'+'E {$$=$1+$2;}

|NUMBER NUMBER {$$=$1+$2;}

|NUMBER {$$=$1*2;}

;
	
%%

//driver code
void main()
{
printf("\n SAVAL PUCHO :\n");

yyparse();
if(flag==0)
printf("\n ABHAR :) \n\n");
}

void yyerror()
{
printf("\n PUCHELA SAVAL MA VADHU/OCHI/KHOTI MAHITI CHE. \n\n");
flag=1;
}

