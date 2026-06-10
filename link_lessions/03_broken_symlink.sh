#!/bin/bash
set -e

echo "Important file" > real.txt
ln -sf real.txt link.txt
rm real.txt

echo "The symlink still exists, but its target is gone:"
ls -l link.txt

echo
cat link.txt || echo "Error: broken symlink"
