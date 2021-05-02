#!/bin/sh
#number=$(bspc query -N -n .hidden.local.window | wc -l)
number=$(bspc-ordered-hide count)

if [ "$number" -ne 0 ]; then
    [ "$1" = "-i" ] && {
        info=$(bspc-ordered-hide peek)
        echo " $info $number"
    } || {
        post="window"
        if [ "$number" -gt 1 ]; then
            post="windows"
        fi
        echo " $(number-to-letters $number) hidden $post"
    }
else
    echo ""
fi


