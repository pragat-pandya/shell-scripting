#!/bin/bash
cat etc/shadow
STATUS="$?"
if [ $STATUS -eq 0 ]
then
  echo "commmand succeded"
else
  echo "commmand failed"
  exit 1
fi
