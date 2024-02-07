#!/bin/bash

# Verificar si Python y pip están instalados
if ! command -v python3 &> /dev/null || ! command -v pip &> /dev/null
then
    echo "Python o pip no están instalados. Por favor, instálelos antes de continuar."
    exit 1
fi

# Instalar dependencias
pip install -r requirements.txt
