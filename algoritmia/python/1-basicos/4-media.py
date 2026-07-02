"""
Solicita tres notas y calcula la media aritmetica.
"""

nota1 = int(input("Dime la note de la 1ª eval")) 
nota2 = int(input("Dime la note de la 2ª eval")) 
nota3 = int(input("Dime la note de la 3ª eval"))

suma = nota1 + nota2 + nota3 
media = suma/3 

print(f"Tu media es {media}") 
