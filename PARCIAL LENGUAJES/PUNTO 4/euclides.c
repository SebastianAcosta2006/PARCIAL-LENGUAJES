#include <stdio.h>
#include <time.h>

int gcd(int a, int b){
    if(b == 0)
        return a;
    return gcd(b, a % b);
}

int main(){

    int a = 987654321;
    int b = 123456789;

    clock_t inicio = clock();

    int resultado = gcd(a,b);

    clock_t fin = clock();

    double tiempo = (double)(fin - inicio) / CLOCKS_PER_SEC;

    printf("C (compilado)\n");
    printf("MCD(%d,%d) = %d\n", a,b,resultado);
    printf("Tiempo: %f segundos\n", tiempo);

    return 0;
}
