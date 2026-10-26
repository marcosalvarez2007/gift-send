@echo off
set "APP_DIR=%~dp0"
set "PYTHON=%APP_DIR%venv\Scripts\python.exe"
if not exist "%PYTHON%" (
    echo No se encontro Python en la carpeta venv.
    pause
    exit /b 1
)
start "Marcos Dev Gift Sender" "%PYTHON%" "%APP_DIR%gift.py"
timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:8080/"
