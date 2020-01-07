  #!/bin/bash
function logs(){
  for VAR in {1..3}
  do
    local NUM=$RANDOM
    logger -i -t randomly -p user.info "$NUM"
    echo "$NUM"
  done
}

logs
