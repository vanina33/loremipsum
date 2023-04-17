#!/bin/bash

# Obtener la ruta del directorio del archivo de script
directorio=$(dirname "${BASH_SOURCE[0]}")

# Buscar archivos .txt en el directorio del archivo de script y contar líneas
for archivo in "$directorio"/*.txt; do
  if [[ -f $archivo ]]; then
    num_lineas=$(wc -l < "$archivo")
    echo "El archivo '$archivo' tiene $num_lineas líneas."
  fi
done