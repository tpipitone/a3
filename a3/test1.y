%{
	#include <stdio.h>
	#include <math.h>
	#include <stdlib.h>
%}


%union {char id; char op;}


%token	IDENTIFIER OPERATOR

%left '-' '+'
%left '*' '/'

%%

/*** Rules Section ***/

assignment:
	IDENTIFIER '=' exp {printf("VALID, ID = EXP\n");} 

exp:
	IDENTIFIER	{printf("HERE, ID\n");}
	|exp '+' exp	{printf("HERE2\n");}
	|exp '-' exp
	|exp '/' exp
	|exp '*' exp
	|exp '%' exp
	; 

%%


int main(void){
	printf("INPUT:");
	yyparse(); // yyparse returns 0 if there are no syntax errors, 1 if errors
	printf("VALID", "\n"); 
	exit(0); 
}

int yyerror(char *s){
	printf("SOMETHING WENT WRONG\n");
	exit(0); 
}
