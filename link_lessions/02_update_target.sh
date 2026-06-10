#!/bin/bash
set -e

echo "Original text" > real.txt
ln -sf real.txt link.txt

echo "Updated text" > real.txt

echo "The symlink shows the updated target content:"
cat link.txt
