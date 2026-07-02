import math

n = 1
respuesta = ""

while not respuesta == "exit":
    pi = n * math.sin(math.radians(180)/n)
    print(f"{n} poligons: {pi}")
    n += n
    respuesta = input()

