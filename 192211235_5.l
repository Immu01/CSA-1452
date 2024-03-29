%{
#include <stdio.h>
%}

%%

"auto"          { printf("Keyword: auto\n"); }
"break"         { printf("Keyword: break\n"); }
"case"          { printf("Keyword: case\n"); }
"char"          { printf("Keyword: char\n"); }
"const"         { printf("Keyword: const\n"); }
"continue"      { printf("Keyword: continue\n"); }
"default"       { printf("Keyword: default\n"); }
"do"            { printf("Keyword: do\n"); }
"double"        { printf("Keyword: double\n"); }
"else"          { printf("Keyword: else\n"); }
"enum"          { printf("Keyword: enum\n"); }
"extern"        { printf("Keyword: extern\n"); }
"float"         { printf("Keyword: float\n"); }
"for"           { printf("Keyword: for\n"); }
"goto"          { printf("Keyword: goto\n"); }
"if"            { printf("Keyword: if\n"); }
"int"           { printf("Keyword: int\n"); }
"long"          { printf("Keyword: long\n"); }
"register"      { printf("Keyword: register\n"); }
"return"        { printf("Keyword: return\n"); }
"short"         { printf("Keyword: short\n"); }
"signed"        { printf("Keyword: signed\n"); }
"sizeof"        { printf("Keyword: sizeof\n"); }
"static"        { printf("Keyword: static\n"); }
"struct"        { printf("Keyword: struct\n"); }
"switch"        { printf("Keyword: switch\n"); }
"typedef"       { printf("Keyword: typedef\n"); }
"union"         { printf("Keyword: union\n"); }
"unsigned"      { printf("Keyword: unsigned\n"); }
"void"          { printf("Keyword: void\n"); }
"volatile"      { printf("Keyword: volatile\n"); }
"while"         { printf("Keyword: while\n"); }

[[:alpha:]_][[:alnum:]_]*    { printf("Identifier: %s\n", yytext); }

.                            ;
%%
int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
