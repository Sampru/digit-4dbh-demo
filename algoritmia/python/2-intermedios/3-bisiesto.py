"""
Indica si un anio fue, es o sera bisiesto segun el anio introducido.
"""

anno = int(input("Introduce un año: "))

print(f"{anno} " + \
  ("no " if anno % 400 and (anno % 4 or not anno % 100) else "") + \
  ("fue " if anno < 2026 else "será " if anno > 2026 else "es ") + \
  "bisiesto")
