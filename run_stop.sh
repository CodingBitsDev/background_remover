#!/bin/bash
file=/tmp/bgremoval
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

if [[ -s $file ]] ; then
 process=$(cat $file)
 kill $process
 rm $file
else
    python3 $SCRIPTPATH/bgRemoval.py & PID=$!;
    echo $PID > $file;
fi