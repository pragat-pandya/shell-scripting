#!/bin/bash
for PATH_HOLDER in $@
do
  if [ -d ${PATH_HOLDER} ]
  then
    echo "It is a directory"
  elif [ -f ${PATH_HOLDER} ]
  then
    echo "It is a regular file"
  else
    echo "It is some other type of file"
  fi
  LIST=$(ls -l ${PATH_HOLDER})
  echo "${LIST}"
done
