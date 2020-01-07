#!/bin/bash
function file_count {
  local COUNT=`ls | wc -l`
  echo "$COUNT"
}
file_count
