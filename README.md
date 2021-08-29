
# **Criando um compilador**

### O que é o flex?

flex é um analizador léxico
Faz a leitura do programa fonte, caractere a caractere, e traduz para uma sequencia de símbolos léxicos, chamados de tokens

Análise Léxica
- Desconsidera espaços em brancos e
comentários;
- Armazena os símbolos em tabelas internas;
- Essa tabela será utilizada pelo analisador
sintático;
- Para o analisador léxico as palavras constituem
uma linguagem regular (rever hierarquia de
Chomsky );
- São especificados através de reconhecedores
de linguagens regulares
- Autômatos
- Gramáticas regulares

### **Tokens**
São unidades lógicas que representam um ou mais caracteres

- Cada palavra chave é um token. Ex: then, begin, integer
- Cada identificador é um token. Ex: a, soma, var1
- Cada constante é um token. Ex: 123, 123.456, 1.2E3
- Cada sinal é um token. Ex: (, <, <=, +

### **Programa fonte**
O arquivo lex.l é compilado pelo compilador Lex gerando o arquivo lex.yy.c  de pois é compilado pelo  compilador C gerando o arquivo a.out onde tem o  fluxo de entrada a.out e sequêcia de tokens.

##### **Exemplo**:
```shell
    flex -i renan-moura.l
    gcc lex.yy.c -o my-compiler -lfl
    ./my-compiler
```

