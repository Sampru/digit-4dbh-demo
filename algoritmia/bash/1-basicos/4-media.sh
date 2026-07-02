#!/usr/bin/env bash

# Solicita tres notas y calcula la media aritmetica.

read -r -p "Dime la note de la 1a eval" nota1
read -r -p "Dime la note de la 2a eval" nota2
read -r -p "Dime la note de la 3a eval" nota3

suma=$((nota1 + nota2 + nota3))
media=$(awk -v suma="$suma" 'BEGIN { printf "%.10g", suma / 3 }')

printf 'Tu media es %s\n' "$media"
