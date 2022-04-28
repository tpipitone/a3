To compile and run on edoras:

$ bison -d test1.y
$ flex test1.l
$ gcc lex.yy.c test1.tab.c -o test1 -ll 
./test1


INPUT:
ID OP ID; 


(not returning valid even though it should)
