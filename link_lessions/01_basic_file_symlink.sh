#!/bin/bash
set -e

echo "Hello from the real file" > real.txt
ln -sf real.txt link.txt

echo "Reading through the symlink:"
cat link.txt

echo
ls -l link.txt
