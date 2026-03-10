%{
#include <stdio.h>
#include <math.h>

int yylex();
void yyerror(const char *s);

double sqrt_newton(double n){
    double x = n;
    double y = 1;
    double e = 0.000001;

    while (x - y > e){
        x = (x + y)/2;
        y = n/x;
    }

    return x;
}

void yyerror(const char *s){
    printf("Error: %s\n", s);
}
%}

%token NUM
%token EOL

%%

input:
      | input line
      ;

line:
      NUM EOL { printf("Raiz cuadrada de %d = %f\n", $1, sqrt_newton($1)); }
      ;

%%

int main(){
    yyparse();
    return 0;
}
