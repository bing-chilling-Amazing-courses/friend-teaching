#!/bin/bash
set -e

echo "Datos valiosos" > original.txt

# Crear un enlace duro (sin la opción -s)
ln original.txt hardlink.txt

# Crear un enlace simbólico (con la opción -s)
ln -sf original.txt softlink.txt

echo "Borrando el archivo original.txt..."
rm original.txt

echo
echo "Intentando leer el enlace simbólico (softlink.txt):"
cat softlink.txt || echo "Error: El enlace simbólico está roto porque el destino desapareció."

echo
echo "Intentando leer el enlace duro (hardlink.txt):"
cat hardlink.txt
echo "¡Éxito! El enlace duro sigue funcionando porque apunta directamente a los datos en el disco."
