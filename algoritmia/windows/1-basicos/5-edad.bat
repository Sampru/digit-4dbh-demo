@echo off
REM Calcula la edad que tenia la madre cuando nacio su hijo o hija.

set /p EDAD_HIJO=Cual es la edad del/de la hij@? 
set /p EDAD_MADRE=Cual es la edad de la madre? 

set /a DIFERENCIA=%EDAD_MADRE% - %EDAD_HIJO%
echo La madre l@ tuvo cuando tenia %DIFERENCIA% anios
