%{
//definições em c
%}
  
    //definições regulares
COMMENTS[//]+

NEWLINE"\n"
WHITESPACE[ \t]

/*Operadores*/
SUN"+"
MINUS"-"
TIMES"*"
DIVIDE"/"
ASSIGNMENT"="

/*Operadores lógicos*/
SMALLER"<"
BIGGER">"
LESS_OR_EQUAL"<="
BIGGER_OR_EQUAL">="
COMPARE"=="
AND"&"
OR"~"
NOT"!"

/*Números*/
INT[0-9]+
FLOAT[0-9]+.[0-9]+
INVALID_NUMBER[0-9]*"."+[0-9]*

/*Estrutura de condição*/
IF"se"
ELSE"se nao"

/*Estrutura de repetição*/
WHILE"enquanto"
FOR"para"

/*String*/
CHARACTER[a-zA-Z]
STRING[a-zA-Z]+

/*boolean*/
TRUE"true"
FALSE"false"

START"inicio"
END"final"

WRITTEN"escreva" 
READING"leia"

VARIAVEL"renan_"{STRING}({STRING}|{INT}|"_")*

%%
{WHITESPACE} {printf("ESPAÇOS EM BRANCOS: %s\n", yytext);}
{COMMENTS} {printf("COMENTARIO: %s\n", yytext);}
{NEWLINE} {printf("NOVA LINHA: %s\n", yytext);}

{READING} {printf("LEITURA: %s\n", yytext); }
{WRITTEN} {printf("ESCRITA: %s\n", yytext); }

{SUN} {printf("SOMA: %s\n", yytext); }
{MINUS} {printf("SUBTRAÇÃO: %s\n", yytext); }
{TIMES} {printf("MULTIPLICAÇÃO: %s\n", yytext); }
{DIVIDE} {printf("DIVISÃO: %s\n", yytext); }
{ASSIGNMENT} {printf("ATRIBUIÇÃO: %s\n", yytext); }

{SMALLER} {printf("MENOR %s\n", yytext);}
{BIGGER} {printf("MAIOR: %s\n", yytext);}
{LESS_OR_EQUAL} {printf("MENOR OU IGUAL: %s\n", yytext);}
{BIGGER_OR_EQUAL} {printf("MAIOR OU IGUAL: %s\n", yytext);}
{COMPARE} {printf("COMPARAÇÃO: %s\n", yytext);}

{AND} {printf("AND: %s\n", yytext);}
{OR} {printf("OR: %s\n", yytext);}
{NOT} {printf("NOT: %s\n", yytext);}

{INT} {printf("INTEIRO: %s\n", yytext);}
{FLOAT} {printf("PONTO FLUTUANTE: %s\n", yytext);}
{INVALID_NUMBER} {printf("NUMERO INVALIDO: %s\n", yytext);}

{IF} {printf("IF : %s\n", yytext);}
{ELSE} {printf("ELSE: %s\n", yytext);}

{WHILE} {printf("ENQUANTO: %s\n", yytext);}
{FOR} {printf("PARA: %s\n", yytext);}

{TRUE} {printf("VERDADE: %s\n", yytext);}
{FALSE} {printf("FALSO: %s\n", yytext);}

{START} {printf("INICIO: %s\n", yytext);}
{END} {printf("FINAL: %s\n", yytext);}

{VARIAVEL} {printf("VARIAVEL: %s\n", yytext);}

{CHARACTER} {printf("CARACTERE: %s\n", yytext);}
{STRING} {printf("STRING: %s\n", yytext);}

%%

int main(int argc, char **argv){
  yyin = fopen("exemple.renan", "r");
  yylex();
  fclose(yyin);
return 0;
}
