#!/bin/bash
file=/tmp/bgremoval
videoPath=/dev/video5
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

if [[ ! -s $file ]] ; then
    sudo modprobe -r v4l2loopback
    sudo modprobe v4l2loopback devices=2 video_nr=5,6 card_label="v4l2loopback","camdroid" exclusive_caps=1
fi

if [[ -s $file ]] ; then
 process=$(cat $file)
 kill $process
 rm $file
else
    python3 $SCRIPTPATH/bgRemoval.py & PID=$!;
    echo $PID > $file;
fi