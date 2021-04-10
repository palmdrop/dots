#!/bin/sh
#number=$(bspc query -N -n .hidden.local.window | wc -l)
number=$(bspc-ordered-hide count)

if [ "$number" -ne 0 ]; then
    [ "$1" = "-i" ] && {
        info=$(bspc-ordered-hide peek)
        echo " $info $number"
    } || {
        echo " $number hidden "
    }
else
    echo ""
fi


