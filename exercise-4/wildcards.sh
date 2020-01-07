#!/bin/bash
# Renaming all the jpg files so that all precedes with renamed date.
shopt -s nullglob   # Enabling nullglobe in case no file-name matches the searching patter

for FILES in *.jpg
do
  mv $FILES $(date +%F)-$FILES
  echo "Renaming $FILES as $(date +%F)-$FILES"
done
