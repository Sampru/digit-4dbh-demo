@echo off
REM Determina si un numero entero es par o impar.

set /p NUMERO=Introduce un numero: 
set /a RESTO=%NUMERO% %% 2

if %RESTO% EQU 0 (
  echo El numero es par.
) else (
  echo El numero es impar.
)
