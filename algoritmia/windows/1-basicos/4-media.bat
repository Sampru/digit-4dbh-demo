@echo off
REM Solicita tres notas y calcula la media aritmetica.

set /p NOTA1=Dime la note de la 1a eval
set /p NOTA2=Dime la note de la 2a eval
set /p NOTA3=Dime la note de la 3a eval

set /a SUMA=%NOTA1% + %NOTA2% + %NOTA3%
for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "%SUMA% / 3"`) do set "MEDIA=%%i"

echo Tu media es %MEDIA%
