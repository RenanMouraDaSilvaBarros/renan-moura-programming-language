all: renan-moura.l
	flex -i renan-moura.l
	gcc lex.yy.c -o compiler -lfl
	
	./compiler
