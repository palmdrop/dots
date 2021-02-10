#!/bin/sh
number=$(bspc query -N -n .hidden.local.window | wc -l)

if [ "$number" -ne 0 ]; then
    echo " $number "
else
    echo ""
fi


