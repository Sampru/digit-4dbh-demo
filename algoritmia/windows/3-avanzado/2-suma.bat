@echo off
REM Acumula numeros introducidos por el usuario hasta que decide terminar.
setlocal EnableDelayedExpansion

set "RESPUESTA="
set /a SUMA=0

:loop
if /I "%RESPUESTA%"=="No" goto fin
if /I "%RESPUESTA%"=="n" goto fin

set /p NUM=Dime un numero: 
set /a SUMA=!SUMA! + %NUM%
set /p RESPUESTA=Quieres anadir otro numero? ^(S/n^)
goto loop

:fin
echo La suma total es !SUMA!
endlocal
