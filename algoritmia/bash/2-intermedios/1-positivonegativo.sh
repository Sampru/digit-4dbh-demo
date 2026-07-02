#!/usr/bin/env bash

# Determina si un numero es positivo, negativo o cero.

read -r -p "Introduce un numero: " numero

if ((numero > 0)); then
  printf '%s\n' "El numero es positivo."
elif ((numero < 0)); then
  printf '%s\n' "El numero es negativo."
else
  printf '%s\n' "El numero es 0, ni positivo ni negativo, ni frio ni calor."
fi
