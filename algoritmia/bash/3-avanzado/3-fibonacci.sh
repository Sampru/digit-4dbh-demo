#!/usr/bin/env bash

# Genera y muestra los primeros numeros de la sucesion de Fibonacci.

read -r -p "Dime cuantos numeros quieres tener en la seguida: " n

a=0
b=1

if ((n >= 1)); then
  printf '%s\n' "$a"
fi

if ((n >= 2)); then
  printf '%s\n' "$b"
fi

for ((i = 2; i < n; i++)); do
  siguiente=$((a + b))
  printf '%s\n' "$siguiente"
  a=$b
  b=$siguiente
done
