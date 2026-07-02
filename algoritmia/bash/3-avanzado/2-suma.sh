#!/usr/bin/env bash

# Acumula numeros introducidos por el usuario hasta que decide terminar.

respuesta=""
suma=0

while [[ "$respuesta" != "No" && "$respuesta" != "no" && "$respuesta" != "n" ]]; do
  read -r -p "Dime un numero: " num
  suma=$((suma + num))
  read -r -p "Quieres anadir otro numero? (S/n)" respuesta
done

printf 'La suma total es %s\n' "$suma"
