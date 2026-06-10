#!/bin/bash
set -e

echo "Datos importantes" > target.txt
ln -sf target.txt my_link.txt

echo "Listado normal con ls -l:"
ls -l my_link.txt

echo
echo "Usando 'readlink' para ver solo el nombre/ruta relativa del destino:"
readlink my_link.txt

echo
echo "Usando 'realpath' para ver la ruta absoluta completa del destino:"
realpath my_link.txt
