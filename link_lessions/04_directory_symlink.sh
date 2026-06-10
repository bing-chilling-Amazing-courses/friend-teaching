#!/bin/bash
set -e

mkdir -p real_folder
echo "File inside folder" > real_folder/note.txt
ln -sfn real_folder shortcut_folder

echo "Files visible through the directory symlink:"
ls shortcut_folder

echo
cat shortcut_folder/note.txt
