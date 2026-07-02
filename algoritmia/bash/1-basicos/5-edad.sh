#!/usr/bin/env bash

# Calcula la edad que tenia la madre cuando nacio su hijo o hija.

read -r -p "Cual es la edad del/de la hij@? " edad_hijo
read -r -p "Cual es la edad de la madre? " edad_madre

diferencia=$((edad_madre - edad_hijo))

printf 'La madre l@ tuvo cuando tenia %s anios\n' "$diferencia"
