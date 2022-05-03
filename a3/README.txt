To compile and run on edoras:

$ bison -d parser.y
$ flex parser.l
$ gcc lex.yy.c parser.tab.c -o test1 -ll 
./parser


EXPRESSIONS:

identifier OP identifier (does not need semicolon)

ASSIGNMENT: 

identifier "=" identifier; (needs semicolon)
