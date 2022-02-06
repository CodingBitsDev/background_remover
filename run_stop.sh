#!/bin/bash
file=/tmp/bgremoval

if [[ -s $file ]] ; then
 process=$(cat $file)
 kill $process
 rm $file
else
    python3 ./bgRemoval.py & PID=$!;
    echo $PID > $file;
fi