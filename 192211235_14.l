%{
#include <stdio.h>
float op1 = 6, op2 = 7;
%}

%%
"+"     { printf("sum = %f\n", op1 + op2); }
"-"     { printf("diff = %f\n", op1 - op2); }
"*"     { printf("mul = %f\n", op1 * op2); }
"/"     { 
            if (op2 != 0)
                printf("div = %f\n", op1 / op2);
            else
                printf("Error: Division by zero!\n");
        }
.       { printf("Enter a proper operator.\n"); }
%%

int main() {
    printf("Enter number 1: %f\n", op1);
    printf("Enter number 2: %f\n", op2);
    printf("Enter the Operator: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
