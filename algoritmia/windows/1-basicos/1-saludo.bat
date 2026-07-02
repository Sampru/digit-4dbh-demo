@echo off
REM Solicita nombre y apellido al usuario y muestra un saludo completo.

set /p NOMBRE=Dime tu nombre: 
set /p APELLIDO=Dime tu apellido: 

echo Hola %NOMBRE% %APELLIDO%
