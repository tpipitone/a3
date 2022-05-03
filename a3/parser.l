%{
/** DEFINITIONS **/
	#include "parser.tab.h"
%}


%%


[0-9]+ {yylval.num = atoi(yytext); return NUMBER; }
[a-zA-Z$_][a-zA-Z0-9$_]* { return IDENTIFIER; } 
";" {return SEMICOLON;}
"(" {return LPAREN;}
")" {return RPAREN;}
"\n" {return EOL;}
[+-/%*] {return OP;}
"=" {return EQUALS;}
. {}


%%


yywrap() {}
