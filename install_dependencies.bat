@echo off

:: Verificar Python
python --version > nul 2>&1
if %errorlevel% neq 0 goto error

:: Verificar pip
pip --version > nul 2>&1
if %errorlevel% neq 0 goto error

:: Instalar dependencias
pip install -r requirements.txt
goto end

:error
echo Python o pip no están instalados. Por favor, instálelos antes de continuar.
goto end

:end
pause
