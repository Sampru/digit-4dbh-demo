"""
Determina si un numero es positivo, negativo o cero.
"""

numero = int(input("Introduce un número: "))

if numero > 0:
    print("El número es positivo.")
elif numero < 0:
    print("El número es negativo.")
else:
    print("El número es 0, ni positivo ni negativo, ni frío ni calor.")
