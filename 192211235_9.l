%{
#include <stdio.h>
int max_length = 0;
%}

%%
[a-zA-Z]+   {
                int length = yyleng;
                if (length > max_length) {
                    max_length = length;
                }
            }

\n          {
                printf("Length of the longest word: %d\n", max_length);
                max_length = 0;
            }

.           ;

%%

int yywrap() {
    return 0; // indicate that there are more files to process
}

int main() {
    yylex();
    return 0;
}