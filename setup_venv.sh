#!/bin/bash

# Nombre del entorno virtual
VENV_NAME="myvenv"

# Crear el entorno virtual si no existe
if [ ! -d "$VENV_NAME" ]; then
    python3 -m venv $VENV_NAME
fi

# Activar el entorno virtual
source $VENV_NAME/bin/activate

# Instalar dependencias
pip install -r requirements.txt

# Desactivar el entorno virtual
deactivate
