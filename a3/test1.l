%{

#include <stdlib.h>
#include "test1.tab.h"
void yyerror(char *); 

%}

%%

[+\-*/%]+ {
	return OPERATOR;
	}

[A-Za-z]+ {
	return IDENTIFIER; 
	}

[ \t]+	;

.	{
	printf("INVALID INPUT\n");
	return yytext[0]; 
	}

%%

int yywrap(void){
	return 0;
}


