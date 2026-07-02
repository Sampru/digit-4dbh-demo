#!/usr/bin/env bash

# Solicita nombre y apellido al usuario y muestra un saludo completo.

read -r -p "Dime tu nombre: " nombre
read -r -p "Dime tu apellido: " apellido

saludo="Hola ${nombre} ${apellido}"

printf '%s\n' "$saludo"
