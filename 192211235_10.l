%{
#define YY_NO_UNPUT
#include <stdio.h>
int yywrap(void); // Forward declaration to suppress the warning
%}

%%
[[:alpha:]]+:\/\/[[:alnum:].\/?=_%&-]+    { printf("Valid URL: %s\n", yytext); }
\n                                        ;
.                                         { printf("Invalid URL: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}

int yywrap(void) {
    return 1;
}
