#!/bin/bash

if [ "$#" -ne 1 ] ; then
    echo "Expected: hide, show or toggle"
    exit 3
fi

if [ "$1" == "toggle" ] ; then
    /home/xan/.config/polybar/scripts/info-mode/info-toggle.sh
elif [ "$1" == "hide" ] ; then
    /home/xan/.config/polybar/polybar-msg-number.sh 2 cmd hide 
    touch /home/xan/.config/polybar/scripts/info-mode/.hidden
elif [ "$1" == "show" ] ; then
    /home/xan/.config/polybar/polybar-msg-number.sh 2 cmd show 
    rm /home/xan/.config/polybar/scripts/info-mode/.hidden
else
    echo "Invalid argument."
fi

chmod 777 /home/xan/.config/polybar/scripts/info-mode/.hidden
