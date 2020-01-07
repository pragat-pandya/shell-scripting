#!/bin/bash
read -p "How many lines of /etc/passwd would you like to see?: " LINES
LINE_NUMBER=0
while read LINE
do
  echo "${LINE_NUMBER}: ${LINE}"
  ((LINE_NUMBER++))
  if [ $LINE_NUMBER -ge $LINES ]
  then
    break
  fi
done < /etc/passwd
