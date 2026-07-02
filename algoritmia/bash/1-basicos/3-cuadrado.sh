#!/usr/bin/env bash

# Calcula datos geometricos de un cuadrado y de sus circunferencias inscrita y circunscrita.

printf '%s\n' "--- Soy un programa que calcula el perimetro y el area de cuadrados. ---"
read -r -p $'\tDime el lado del cuadrado (m): ' lado

area=$((lado * lado))
perimetro=$((lado * 4))
diagonal=$(awk -v area="$area" 'BEGIN { printf "%.10g", sqrt(area + area) }')
r_circuns=$(awk -v diagonal="$diagonal" 'BEGIN { printf "%.10g", diagonal / 2 }')
a_circuns=$(awk -v radio="$r_circuns" 'BEGIN { printf "%.10g", radio * radio * atan2(0, -1) }')
p_circuns=$(awk -v radio="$r_circuns" 'BEGIN { printf "%.10g", 2 * radio * atan2(0, -1) }')
r_inscr=$(awk -v lado="$lado" 'BEGIN { printf "%.10g", lado / 2 }')
a_inscr=$(awk -v radio="$r_inscr" 'BEGIN { printf "%.10g", radio * radio * atan2(0, -1) }')
p_inscr=$(awk -v radio="$r_inscr" 'BEGIN { printf "%.10g", 2 * radio * atan2(0, -1) }')

printf '%s\n' "Datos del cuadrado:"
printf '\t- Area: %s m^2\n' "$area"
printf '\t- Perimetro: %s m\n' "$perimetro"
printf '\t- Diagonal: %s m\n' "$diagonal"
printf '%s\n' $'\t- Circunscrito:'
printf '\t\t- Radio: %s m\n' "$r_circuns"
printf '\t\t- Area: %s m^2\n' "$a_circuns"
printf '\t\t- Perimetro: %s m\n' "$p_circuns"
printf '%s\n' $'\t- Inscrito:'
printf '\t\t- Radio: %s m\n' "$r_inscr"
printf '\t\t- Area: %s m^2\n' "$a_inscr"
printf '\t\t- Perimetro: %s m\n' "$p_inscr"
printf '%s\n' $'\t- Representacion si * es 1m^2:'

for ((i = 0; i < lado; i++)); do
  linea=""
  for ((j = 0; j < lado; j++)); do
    linea+="* "
  done
  printf '\t\t%s\n' "$linea"
done
