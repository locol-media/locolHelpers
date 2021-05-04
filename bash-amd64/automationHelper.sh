#!/bin/bash

# make sure we aren't running already
what=`basename $0`
for p in `ps h -o pid -C $what`; do
        if [ $p != $$ ]; then
                exit 0
        fi
done

./websocat_amd64-linux -v -t  ws://127.0.0.1:30081 cmd:./execCmd.sh