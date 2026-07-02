"""
Genera y muestra los primeros numeros de la sucesion de Fibonacci.
"""

n = int(input("Dime cuantos numeros quieres tener en la seguida: "))

fibonacci = [0, 1]

while len(fibonacci)<n:
    fibonacci.append(fibonacci[len(fibonacci)-1] + fibonacci[len(fibonacci)-2])

[print(fib) for fib in fibonacci[:n]]
