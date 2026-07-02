@echo off
REM Determina si un numero es positivo, negativo o cero.

set /p NUMERO=Introduce un numero: 

if %NUMERO% GTR 0 (
  echo El numero es positivo.
) else (
  if %NUMERO% LSS 0 (
    echo El numero es negativo.
  ) else (
    echo El numero es 0, ni positivo ni negativo, ni frio ni calor.
  )
)
