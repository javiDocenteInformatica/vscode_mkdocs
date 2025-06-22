@echo off
chcp 65001 > nul
setlocal

set "SALIDA=arbol_directorios.txt"

echo Generando árbol de directorios en %CD%...
echo ---------------------------------------- > "%SALIDA%"
echo Carpeta raíz: %CD% >> "%SALIDA%"
echo ---------------------------------------- >> "%SALIDA%"

tree /F /A >> "%SALIDA%"

echo.
echo El árbol se ha guardado en %SALIDA%
pause
