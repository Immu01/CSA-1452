%{
#include <stdio.h>
#include <string.h>
%}

%%
abc     { printf("ABC"); }
.       { printf("%s", yytext); }
%%
int yywrap() {
    return 1;
}
int main() {
    yylex();
    return 0;
}
