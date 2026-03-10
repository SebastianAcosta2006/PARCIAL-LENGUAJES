%{
#include <stdio.h>
#include <math.h>

double sqrt_newton(double n){
    double x = n;
    double y = 1;
    double e = 0.000001;

    while(x - y > e){
        x = (x + y)/2;
        y = n/x;
    }
    return x;
}
%}

%token NUM
%token EOL

%%

input:
    | input line
;

line:
    NUM EOL { printf("Raiz = %f\n", sqrt_newton($1)); }
;

%%

int main(){
    return yyparse();
}

int yyerror(char *s){
    printf("Error\n");
}
