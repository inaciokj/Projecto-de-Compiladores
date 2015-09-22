#include "pseudoscanner.h"
%} 
%%
-?[0-9]+ { return INTEIRO; }
"escreva" { return ESCREVA; }
"leia" { return LEIA; }
"SE" { return SE ; }
"senao" { return SENAO; }
"entao" { return ENTAO; }
"fimse" { return FIMSE; }
"para" { return PARA; }
"ate" { return ATE; }
"passo" { return PASSO; }
"fimpara" { return FIMPARA; }
"+" { return ADICAO; } 
[-] { return SUBTRACCAO; }
"/" { return DIVISAO; }
"*" { return MULTIPLICACAO; }
"=" { return IGUAL; }
"<" { return MENOR; }
"!=" { return DIFERENTE ; }
">" { return MAIOR; }
"<=" { return MENOR_OU_IGUAL; }
">=" { return MAIOR_OU_IGUAL; }
"<-" { return ATRIBUICAO; }
"&&" { return LOGICA_E ; }
"||" { return LOGICA_OU; }
"!" { return LOGICA_NAO ; }
"]" { return FECHA_PARENTESES_RETOS; }
"[" { return ABRE_PARENTESES_RETOS; }
"{" { return ABRE_PARENTESES; }
"}" { return FECHA_PARENTESES; }
";" { return PONTO_VIRGULA; }
[\n];
. { return printf("É UM CARACTER DESCONHECIDO"); }
%%
int yywrap(){
return 1;
}    
