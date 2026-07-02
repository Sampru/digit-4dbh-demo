#!/usr/bin/env bash

# Indica si un anio fue, es o sera bisiesto segun el anio introducido.

read -r -p "Introduce un anio: " anno

prefijo=""
tiempo="es"

if ! ((anno % 400 == 0 || (anno % 4 == 0 && anno % 100 != 0))); then
  prefijo="no "
fi

if ((anno < 2026)); then
  tiempo="fue"
elif ((anno > 2026)); then
  tiempo="sera"
fi

printf '%s %sbisiesto\n' "$anno $tiempo " "$prefijo"
