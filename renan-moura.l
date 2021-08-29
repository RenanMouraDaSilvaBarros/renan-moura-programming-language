%{
//definições em c
%}
    
    //definições regulares
COMMENTS[//^//]+

NEWLINE"\n"

LETTERS[a-zA-Z]

SUN"+"
MINUS"-"
TIMES"*"
DIVIDE"/"
NUMBER[0-9]+

WHITESPACE[ \t]
    
%%
    //tokens
{NUMBER} {printf("NUMERO: %s\n", yytext); }
{SUN} {printf("SOMA: %s\n", yytext); }
{MINUS} {printf("SUBTRAÇÃO: %s\n", yytext); }
{TIMES} {printf("MULTIPLICAÇÃO: %s\n", yytext); }
{DIVIDE} {printf("DIVISÃO: %s\n", yytext); }
{WHITESPACE} {printf("ESPAÇOS EM BRANCOS: %s\n", yytext);}
{NEWLINE} {printf("NEWLINE: %s\n", yytext);}
{LETTERS} {printf("LETTERS: %s\n", yytext);}
{COMMENTS} {printf("COMMENTS: %s\n", yytext);}

%%

int main(int argc, char **argv){
  yyin = fopen("exemple.renan", "r");
  yylex();
  fclose(yyin);
return 0;
}
