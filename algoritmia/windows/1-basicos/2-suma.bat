@echo off
REM Pide dos numeros enteros y muestra su suma.

set /p NUM1=Dime un numero: 
set /p NUM2=Dime otro numero: 

set /a RESULTADO=%NUM1% + %NUM2%
echo El resultado es %RESULTADO%
