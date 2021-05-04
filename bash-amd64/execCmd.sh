#!/bin/bash
while read line; do
  echo "reading: ${line}"
  case $line in

  turnon)
    ./restartBrowser.sh
    ;;

  turnoff)
    ./stopBrowser.sh
    ;;

  something)
    echo "started automationHelper"
    ;;

  *)
    echo "unknown ${line}"
    ;;
esac

done < /dev/stdin