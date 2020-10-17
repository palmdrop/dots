#!/bin/bash

FILE=$(xrdbvar dwm.keymodepath)

if [ ! -f "$FILE" ]; 
then
    echo ""
fi

v=$(cat $FILE)

if [ $v -eq 1 ];
then
    echo "$1"
else
    echo "$2"
fi
