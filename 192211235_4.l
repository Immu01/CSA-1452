%{
#include <stdio.h>
%}

VOWEL [aeiouAEIOU]

%%

{VOWEL} {
    printf("Vowel: %s\n", yytext);
}

[a-zA-Z] {
    printf("Consonant: %s\n", yytext);
}

. {
    /* Ignore non-alphabetic characters */
}

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}