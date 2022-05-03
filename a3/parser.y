%{
/** DEFINITONS **/
	char *error_reason; 	
%}

%union{
	int num;
	char *id;  
}


%token EOL SEMICOLON RPAREN LPAREN EQUALS
%token<num> NUMBER
%token<id> IDENTIFIER
%token OP
%type<id> expression
%%
/** RULES **/

input:
| line input
; 


line:expression EOL{ printf("%s\n", "VALID EXPRESSION" );} 
|	assignment EOL{ printf("%s\n", "VALID ASSIGNMENT");}
|	invalid EOL{ printf("%s\n", "INVALID: op op"); return 0; }
|	EOL

expression:
	IDENTIFIER {}
|	expression OP expression {}
|	LPAREN expression RPAREN {}
;

assignment: 
	IDENTIFIER EQUALS expression SEMICOLON {}
;

invalid:
	EQUALS EQUALS {}
|	OP OP {}
;

	

%%



int main(){
	yyparse();
	return 0; 
}

yyerror(char* s){
	printf("ERROR %s\n", s); 
	return 0; 
}
