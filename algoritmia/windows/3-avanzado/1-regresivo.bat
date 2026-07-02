@echo off
REM Ejecuta una cuenta regresiva en segundos hasta llegar a cero.

set /p TIEMPO=De cuanto tiempo quieres que sea la cuenta regresiva? 

:loop
if %TIEMPO% LEQ 0 goto fin
echo %TIEMPO%s
timeout /t 1 /nobreak >nul
set /a TIEMPO=%TIEMPO% - 1
goto loop

:fin
echo Sacabo
