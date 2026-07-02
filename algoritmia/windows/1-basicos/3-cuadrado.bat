@echo off
REM Calcula datos geometricos de un cuadrado y de sus circunferencias inscrita y circunscrita.
setlocal EnableDelayedExpansion

echo --- Soy un programa que calcula el perimetro y el area de cuadrados. ---
set /p LADO=    Dime el lado del cuadrado ^(m^): 

set /a AREA=%LADO% * %LADO%
set /a PERIMETRO=%LADO% * 4
set /a DOBLE_AREA=%AREA% + %AREA%
for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "[math]::Sqrt(%DOBLE_AREA%)"`) do set "DIAGONAL=%%i"
for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "[double](%DIAGONAL% / 2)"`) do set "R_CIRCUNS=%%i"
for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "[math]::Pow(%R_CIRCUNS%, 2) * [math]::PI"`) do set "A_CIRCUNS=%%i"
for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "2 * %R_CIRCUNS% * [math]::PI"`) do set "P_CIRCUNS=%%i"
for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "[double](%LADO% / 2)"`) do set "R_INSCR=%%i"
for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "[math]::Pow(%R_INSCR%, 2) * [math]::PI"`) do set "A_INSCR=%%i"
for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "2 * %R_INSCR% * [math]::PI"`) do set "P_INSCR=%%i"

echo Datos del cuadrado:
echo     - Area: %AREA% m^2
echo     - Perimetro: %PERIMETRO% m
echo     - Diagonal: %DIAGONAL% m
echo     - Circunscrito:
echo         - Radio: %R_CIRCUNS% m
echo         - Area: %A_CIRCUNS% m^2
echo         - Perimetro: %P_CIRCUNS% m
echo     - Inscrito:
echo         - Radio: %R_INSCR% m
echo         - Area: %A_INSCR% m^2
echo         - Perimetro: %P_INSCR% m
echo     - Representacion si * es 1m^2:

for /L %%i in (1,1,%LADO%) do (
  set "LINEA="
  for /L %%j in (1,1,%LADO%) do set "LINEA=!LINEA!* "
  echo         !LINEA!
)

endlocal
