#!/usr/bin/env bash

# Pide dos numeros enteros y muestra su suma.

read -r -p "Dime un numero: " num1
read -r -p "Dime otro numero: " num2

resultado=$((num1 + num2))

printf 'El resultado es %s\n' "$resultado"
