%{
#include <stdio.h>
%}

%%
[A-Z]+[\t\n]   { printf("%s is a Capital word\n", yytext); }
.              ;
%%

int main() 
{
    printf("Enter the string:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}