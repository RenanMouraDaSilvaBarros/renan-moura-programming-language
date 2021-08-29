%{
//definições em c
%}
    
    //definições regulares
COMMENTS[//]+

NEWLINE"\n"
WHITESPACE[ \t]

CHARACTER[a-zA-Z]
STRING[a-zA-Z]+

SUN"+"
MINUS"-"
TIMES"*"
DIVIDE"/"

INT[0-9]+
FLOAT[0-9]+.[0-9]+

INVALIDNUMBER[0-9]*"."+[0-9]*


    
%%
    //tokens
{SUN} {printf("SOMA: %s\n", yytext); }
{MINUS} {printf("SUBTRAÇÃO: %s\n", yytext); }
{TIMES} {printf("MULTIPLICAÇÃO: %s\n", yytext); }
{DIVIDE} {printf("DIVISÃO: %s\n", yytext); }
{WHITESPACE} {printf("ESPAÇOS EM BRANCOS: %s\n", yytext);}
{NEWLINE} {printf("NEWLINE: %s\n", yytext);}
{CHARACTER} {printf("CHARACTER: %s\n", yytext);}
{STRING} {printf("STRING: %s\n", yytext);}

{COMMENTS} {printf("COMMENTS: %s\n", yytext);}
{INT} {printf("INT: %s\n", yytext);}
{FLOAT} {printf("FLOAT: %s\n", yytext);}
{INVALIDNUMBER} {printf("INVALID NUMBER: %s\n", yytext);}




%%

int main(int argc, char **argv){
  yyin = fopen("exemple.renan", "r");
  yylex();
  fclose(yyin);
return 0;
}
