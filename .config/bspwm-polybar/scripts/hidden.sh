#!/bin/sh
number=$(bspc query -N -n .hidden.local.window | wc -l)
#number=$(bspc-ordered-hide count)

if [ "$number" -ne 0 ]; then
    echo " $number "
else
    echo ""
fi


