%{
#include <stdio.h>
#include <stdbool.h>
int yywrap(void) { return 1; }
%}

%%
[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,} {
    printf("Valid email address: %s\n", yytext);
}
.|\n {
    printf("Invalid email address: %s\n", yytext);
}

%%

int main() {
    yylex();
    return 0;
}
