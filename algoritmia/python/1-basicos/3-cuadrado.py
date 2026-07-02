"""
Calcula datos geometricos de un cuadrado y de sus circunferencias inscrita y circunscrita.
"""

import math

print("--- Soy un programa que calcula el perimetro y el área de cuadrados. ---")
lado = int(input(f"\tDime el lado del cuadrado (m): "))

area = lado**2
perimetro = lado*4
diagonal = math.sqrt(area + area)
r_circuns = diagonal/2
a_circuns = r_circuns**2*math.pi
p_circuns = 2*r_circuns*math.pi
r_inscr = lado/2
a_inscr = r_inscr**2*math.pi
p_inscr = 2*r_inscr*math.pi

print("Datos del cuadrado:")

print(f"\t- Área: {area} m^2")
print(f"\t- Perímetro: {perimetro} m")
print(f"\t- Diagonal: {diagonal} m")
print(f"\t- Circunscrito:")
print(f"\t\t- Radio: {r_circuns} m")
print(f"\t\t- Área: {a_circuns} m^2")
print(f"\t\t- Perímetro: {p_circuns} m")
print(f"\t- Inscrito:")
print(f"\t\t- Radio: {r_inscr} m")
print(f"\t\t- Área: {a_inscr} m^2")
print(f"\t\t- Perímetro: {p_inscr} m")
print(f"\t- Representacion si * es 1m^2:")
[print(f"\t\t{'* '*lado}") for x in range(lado)]
