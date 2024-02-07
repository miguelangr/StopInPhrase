@echo off
set VENV_NAME=myvenv

:: Crear el entorno virtual si no existe
if not exist "%VENV_NAME%" (
    python -m venv %VENV_NAME%
)

:: Activar el entorno virtual
call %VENV_NAME%\Scripts\activate

:: Instalar dependencias
pip install -r requirements.txt

:: Desactivar el entorno virtual
call deactivate
