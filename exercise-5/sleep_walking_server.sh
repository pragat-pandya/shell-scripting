#!/bin/bash
case "$1" in
  START|start)
    /tmp/sleep-walking-server &
    ;;
  STOP|stop)
    kill $(cat /tmp/sleep-walking-server.pid)
    ;;
  *)
    echo "Usage: sleep-walking start|stop"
    ;;
esac
