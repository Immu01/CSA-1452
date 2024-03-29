%{
#include <stdio.h>
%}

DIGIT [0-9]

%%
^([7-9][0-9]{9})$   { printf("Valid mobile number: %s\n", yytext); }
.                   { printf("Invalid mobile number: %s\n", yytext); }
%%

int yywrap() {
    return 1; // Indicate that there are no more files to be read
}

int main() {
    yylex();
    return 0;
}
