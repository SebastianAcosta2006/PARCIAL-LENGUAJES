import re

patron = r'^[A-Za-z][A-Za-z0-9]*$'

def verificar(id):
    if re.match(patron, id):
        return "ACEPTE"
    else:
        return "NO ACEPTE"

# pruebas
tests = [
    "variable1",
    "x123",
    "1variable",
    "abc",
    "9test",
    "afsfs",
    "variable2" 
]

for t in tests:
    print(t, ":", verificar(t))
