import re

# expresion regular para movimientos de ajedrez
patron = r'^[a-z]{1,3}\s*(->|x)\s*[a-z]{1,3}[0-9]?$'

def afd(movimiento):
    if re.match(patron, movimiento):
        return "ACEPTADO"
    else:
        return "NO ACEPTADO"


#pruenas
movimientos = [

 
    "p->k4",
    "kbp x qn",
    "p->e2",
    "abc->d4",
    "p x k",
    "kn->b3",
    "qb x kp",

    "p-k4",
    "->k4",
    "p->4",
    "p->k44",
    "123->k4",
    "p ->"
]


print("resuiltados de las pruebas\n")

for m in movimientos:
    resultado = afd(m)
    print(m, ":", resultado)
