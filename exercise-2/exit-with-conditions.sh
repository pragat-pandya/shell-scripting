#!/bin/bash
PATH_HOLDER=$1
if [ -d ${PATH_HOLDER} ]
then
  exit 1
elif [ -f ${PATH_HOLDER} ]
then
  exit 0
else
  exit 2
fi
