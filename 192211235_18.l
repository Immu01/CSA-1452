%{
#include <stdio.h>
int cons = 0;
%}

digit [0-9]

%%

{digit}+   { cons++; printf("%s is a constant\n", yytext); }
.|\n       ;

%%

int yywrap(void) {
    return 1;
}

int main(void) {
    FILE *f;
    char file[100]; // Increased size of array to accommodate longer filenames
    printf("Enter the file name: ");
    scanf("%s", file);
    f = fopen(file, "r");
    if (f == NULL) {
        perror("Error opening file");
        return 1;
    }
    yyin = f;
    yylex();
    printf("Number of constants: %d\n", cons);
    fclose(f);
    return 0;
}
