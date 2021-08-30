%{
//definições em c
%}
    
    //definições regulares
MY_NAME"renan"
COMMENTS[//]+

NEWLINE"\n"
WHITESPACE[ \t]

/*Operadores*/
SUN"+"
MINUS"-"
TIMES"*"
DIVIDE"/"
ASSIGNMENT"=="

/*Operadores lógicos*/
SMALLER"<"
BIGGER">"
LESS_OR_EQUAL"<="
BIGGER_OR_EQUAL">="
COMPARE"="
AND"&"
OR"~"
NOT"!"

/*Números*/
INT[0-9]+
FLOAT[0-9]+.[0-9]+
INVALID_NUMBER[0-9]*"."+[0-9]*

/*Estrutura de repetição*/
WHILE"While"
DO_WHILE"While"
FOR"para"

/*String*/
CHARACTER[a-zA-Z]
STRING[a-zA-Z]+

/*boolean*/
TRUE"true"
FALSE"false"

    
%%
{WHITESPACE} {printf("ESPAÇOS EM BRANCOS: %s\n", yytext);}
{COMMENTS} {printf("COMENTARIO: %s\n", yytext);}
{NEWLINE} {printf("NOVA LINHA: %s\n", yytext);}
  
{SUN} {printf("SOMA: %s\n", yytext); }
{MINUS} {printf("SUBTRAÇÃO: %s\n", yytext); }
{TIMES} {printf("MULTIPLICAÇÃO: %s\n", yytext); }
{DIVIDE} {printf("DIVISÃO: %s\n", yytext); }
{ASSIGNMENT} {printf("ATRIBUIÇÃO: %s\n", yytext); }

{SMALLER} {printf("MENOR %s\n", yytext);}
{BIGGER} {printf("MAIOR: %s\n", yytext);}
{LESS_OR_EQUAL} {printf("MENOR OU IGUAL: %s\n", yytext);}
{BIGGER_OR_EQUAL} {printf("MAIOR OU IGUAL: %s\n", yytext);}
{AND} {printf("AND: %s\n", yytext);}
{OR} {printf("OR: %s\n", yytext);}
{NOT} {printf("NOT: %s\n", yytext);}

{INT} {printf("INTEIRO: %s\n", yytext);}
{FLOAT} {printf("PONTO FLUTUANTE: %s\n", yytext);}
{INVALID_NUMBER} {printf("NUMERO INVALIDO: %s\n", yytext);}


{WHILE} {printf("enquanto: %s\n", yytext);}
{DO_WHILE} {printf("fazerEnquanto: %s\n", yytext);}
{FOR} {printf("para: %s\n", yytext);}

{CHARACTER} {printf("CARACTERE: %s\n", yytext);}
{STRING} {printf("STRING: %s\n", yytext);}


{TRUE} {printf("TRUE: %s\n", yytext);}

{CHARACTER} {printf("CARACTERE: %s\n", yytext);}
{STRING} {printf("STRING: %s\n", yytext);}

%%

int main(int argc, char **argv){
  yyin = fopen("exemple.renan", "r");
  yylex();
  fclose(yyin);
return 0;
}
