#!/bin/bash
function file_count() {
  local COUNT=`ls $1 | wc -l`
  echo "$1:"
  echo "$COUNT"
}
file_count /etc
file_count /var
file_count /usr/bin
