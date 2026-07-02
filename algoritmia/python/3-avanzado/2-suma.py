"""
Acumula numeros introducidos por el usuario hasta que decide terminar.
"""

respuesta = ""
sum = 0

while not (respuesta == "No" or respuesta == "no" or respuesta == "n"):
    num = int(input("Dime un número: "))
    sum += num
    respuesta = input("¿Quieres añadir otro número? (S/n)")

print(f"La suma total es {sum}")
