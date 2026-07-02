@echo off
REM Genera y muestra los primeros numeros de la sucesion de Fibonacci.
setlocal EnableDelayedExpansion

set /p N=Dime cuantos numeros quieres tener en la seguida: 
set /a A=0
set /a B=1
set /a LIMITE=%N% - 1

if %N% GEQ 1 echo !A!
if %N% GEQ 2 echo !B!

for /L %%i in (2,1,%LIMITE%) do (
  set /a SIGUIENTE=!A! + !B!
  echo !SIGUIENTE!
  set /a A=!B!
  set /a B=!SIGUIENTE!
)

endlocal
