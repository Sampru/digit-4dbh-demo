@echo off
REM Indica si un anio fue, es o sera bisiesto segun el anio introducido.
setlocal EnableDelayedExpansion

set /p ANNO=Introduce un anio: 
set "PREFIJO="
set "TIEMPO=es"

set /a RES400=%ANNO% %% 400
set /a RES4=%ANNO% %% 4
set /a RES100=%ANNO% %% 100

if not %RES400% EQU 0 (
  if not %RES4% EQU 0 (
    set "PREFIJO=no "
  ) else (
    if %RES100% EQU 0 set "PREFIJO=no "
  )
)

if %ANNO% LSS 2026 set "TIEMPO=fue"
if %ANNO% GTR 2026 set "TIEMPO=sera"

echo %ANNO% !TIEMPO! !PREFIJO!bisiesto
endlocal
