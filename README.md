PARCIAL-LENGUAJES
Juan Sebastian Acosta Coy  

Este repositorio contiene la solución de los 5 puntos del parcial de compiladores utilizando diferentes herramientas como Python, Flex, Bison, C, Haskell y ANTLR.

Punto 1 Expresión regular y AFD para movimientos de ajedrez

Se implementa una expresión regular para validar movimientos del tipo
p->k4  
kbp x qn  

El programa en Python verifica si un movimiento pertenece o no al lenguaje definido.
<img width="1280" height="800" alt="PUNTO 1 PARCIAL LENGUAJES" src="https://github.com/user-attachments/assets/4c52c91a-ec29-436b-91d3-c0a38a9e57b5" />
<img width="1280" height="800" alt="PRUEBA Y ERROR PUNTO 1" src="https://github.com/user-attachments/assets/d7181fbb-e4b6-462e-a812-c59e0e136ea2" />

Ejecutar:
python3 ajedrez_afd.py

Punto 2 Expresión regular para identificadores
Se implementa un AFD en Python que valida identificadores con la expresión regular:

[A-Za-z][A-Za-z0-9]*
<img width="1280" height="800" alt="PUNTO 2 PARCIAL LENGUAJES" src="https://github.com/user-attachments/assets/4e497eb1-8f5c-42ae-be11-ba0628b68524" />

Esto significa:

El identificador debe comenzar con una letra
Puede contener letras o números posteriormente

Ejecutar:
python3 id_afd.py



Punto 3 Calculadora de raíz cuadrada con Flex y Bison

Se implementa un analizador léxico y sintáctico que calcula la raíz cuadrada de números reales utilizando el método de Newton-Raphson.

Herramientas usadas:
<img width="1280" height="800" alt="INSTALAR FLEX AND BISON" src="https://github.com/user-attachments/assets/4214ff8b-2b3a-4112-ac47-8321fe5cf055" />


Compilar:
bison -d calc.y  
flex calc.l  
gcc calc.tab.c lex.yy.c -o calc -lm  

Ejecutar con archivo de entrada:
<img width="1280" height="800" alt="PUNTO 3 DEL PARCIAL" src="https://github.com/user-attachments/assets/44bf7112-721c-4267-ac65-d9e53b548e15" />

./calc < entrada.txt


Punto 4 Algoritmo de Euclides

Se implementa el algoritmo recursivo de Euclides y se compara entre C y Haskkel

C (lenguaje imperativo)  
Haskell (lenguaje declarativo)
<img width="1280" height="800" alt="PUNTO 4 DEL PARCIAL LENGUAJES" src="https://github.com/user-attachments/assets/ab210201-2c04-44de-86c6-2f8c6a1f7f29" />

Ejecutar en C:

gcc euclides.c -o euclides  
./euclides  

Ejecutar en Haskell:

runghc euclides.hs


Punto 5 Serie de Maclaurin usando ANTLR

Se implementa un programa que calcula los primeros n términos de la serie de Maclaurin para la función e^x.
<img width="1280" height="800" alt="INSTALAR ANDTLR O BUENO ESO" src="https://github.com/user-attachments/assets/da021747-f68c-4e4d-933b-a6015aed3240" />

La fórmula utilizada es:

e^x = Σ (x^n / n!)

Herramientas utilizadas:

Generar parser:

java -jar antlr-4.13.1-complete.jar Maclaurin.g4

Compilar:

javac -cp .:antlr-4.13.1-complete.jar *.java
<img width="1280" height="800" alt="punto 5 del parcial" src="https://github.com/user-attachments/assets/3dcd9f14-b87e-4d3e-8e18-a43acffb9828" />

Ejecutar:

java -cp .:antlr-4.13.1-complete.jar Main

Ejemplo de entrada:

maclaurin 1 10



Haskell  
Flex  
Bison  
ANTLR  
Java  
Linux Ubuntu
