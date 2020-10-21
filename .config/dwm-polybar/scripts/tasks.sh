#!/bin/bash

today=$(tasks today)

case $today in
    0) ramp="0" ;;
    1) ramp="1" ;;
    2) ramp="1" ;;
    3) ramp="2" ;;
    4) ramp="2" ;;
    5) ramp="3" ;;
    6) ramp="3" ;;
    7) ramp="4" ;;
    *) ramp="4" ;;
esac

if (( $today == 0 )) ;
then
    msg=""
else
    var="bar.ramp-$ramp"
    color=$(xrdbvar $var)

    msg="%{B$color}   $today   %{B-}"
fi

echo "$msg"
