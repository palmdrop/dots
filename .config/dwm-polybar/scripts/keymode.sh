#!/bin/bash

FILE="/tmp/dwm.keymode"

if [ ! -f "$FILE" ]; 
then
    #echo "1" >> "$FILE"
    echo ""
fi

v=$(cat /tmp/dwm.keymode)

if [ $v -eq 1 ];
then
    echo "COMMAND"
else
    echo ""
fi
