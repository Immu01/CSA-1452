%{
#include <stdio.h>
#include <stdlib.h>
%}

DIGIT [0-9]

%%

[-+]?{DIGIT}+ {
    int num = atoi(yytext);
    if (num > 0) {
        printf("Positive number: %d\n", num);
    } else if (num < 0) {
        printf("Negative number: %d\n", num);
    }
}

. {
    /* Ignore other characters */
}

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}