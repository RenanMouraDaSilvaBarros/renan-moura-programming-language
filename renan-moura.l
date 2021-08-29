%{
//definições em c
%}
    
    //definições regulares
SUN"+"
MINUS"-"
TIMES"*"
DIVIDE"/"
NUMBER[0-9]+
    
%%
    //tokens
{NUMBER} {printf("NUMERO: %s\n", yytext); }
{SUN} {printf("SOMA: %s\n", yytext); }
{MINUS} {printf("SUBTRAÇÃO: %s\n", yytext); }
{TIMES} {printf("MULTIPLICAÇÃO: %s\n", yytext); }
{DIVIDE} {printf("DIVISÃO: %s\n", yytext); }

%%

int main(int argc, char **argv){
  yyin = fopen("exemple.renan", "r");
  yylex();
  fclose(yyin);
return 0;
}
