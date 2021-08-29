%{
//definições em c
%}
    
    //definições regulares


%%

    //tokens

%%

int main(int argc, char **argv){
  yyin = fopen("exemple.renan", "r");
  yylex();
  fclose(yyin);
return 0;
}
