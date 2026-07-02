"""
Ejecuta una cuenta regresiva en segundos hasta llegar a cero.
"""

from time import sleep

tiempo = int(input("¿De cuánto tiempo quieres que sea la cuenta regresiva? "))

while tiempo:
    print(f"{tiempo}s")
    sleep(1)
    tiempo-=1

print("Sacabó")
