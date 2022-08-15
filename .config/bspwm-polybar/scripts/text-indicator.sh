#!/bin/bash
text=$1

v=$2
max=$3

bg=$4
blank=$5
step=$6
high=$7

count=${#text}

steps=$(echo "$count * $v / $max" | bc)
if [ $v -ne "0" -a $steps -eq 0 ]; then
    steps=1
fi

if (( $v > $max )); then
    [ ! -z $high ] && step=$high
fi

first=${text:0:steps}
last=${text:steps}

echo -e "%{B$bg}%{F$step}$first%{B-}%{F-}%{B$bg}%{F$blank}$last%{B-}%{F-}"
