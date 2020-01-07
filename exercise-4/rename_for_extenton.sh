#!/bin/bash
# Renaming all the files with given extension to prefix provided string if not provided then prefixing the dates by default.
shopt -s nullglob   # Enabling nullglobe in case no file-name matches the searching patter
read -p "Please enter a file extention: " EXT
read -p "Please enter a prefix(Optional): " PRE
for FILES in *.$EXT
do
  if [ -z $PRE ]
  then
    mv $FILES $(date +%F)-$FILES
    echo "Renaming $FILES to $(date +%F)-$FILES"
  else
    mv $FILES ${PRE}-$FILES
    echo "Renamin $FILE to ${PRE}-$FILES"
  fi
done
