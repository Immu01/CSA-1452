%{
#include <stdio.h>
%}

%%
[aeiouAEIOU][a-zA-Z]*    { printf("Accepted: %s\n", yytext); }
.                         ;

%%
int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}