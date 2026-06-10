#!/bin/bash
set -e

echo "Test" > real.txt
ln -sf real.txt link.txt

if [ -L link.txt ]; then
  echo "link.txt is a symlink"
else
  echo "link.txt is not a symlink"
fi

ls -l link.txt
