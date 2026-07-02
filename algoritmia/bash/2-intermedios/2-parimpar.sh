#!/usr/bin/env bash

# Determina si un numero entero es par o impar.

read -r -p "Introduce un numero: " numero

if ((numero % 2)); then
  printf '%s\n' "El numero es impar."
else
  printf '%s\n' "El numero es par."
fi
