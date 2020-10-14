#!/bin/bash

HIDDEN=/home/xan/.config/polybar/scripts/info-mode/.hidden

if [ -f "$HIDDEN" ] ; then
    /home/xan/.config/polybar/scripts/info-mode/info.sh show
else 
    /home/xan/.config/polybar/scripts/info-mode/info.sh hide
fi


