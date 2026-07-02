#!/usr/bin/env bash

# Ejecuta una cuenta regresiva en segundos hasta llegar a cero.

read -r -p "De cuanto tiempo quieres que sea la cuenta regresiva? " tiempo

while ((tiempo > 0)); do
  printf '%ss\n' "$tiempo"
  sleep 1
  ((tiempo--))
done

printf '%s\n' "Sacabo"
