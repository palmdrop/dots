#!/bin/bash

today=$(tasks today)

case $today in
    0) ramp="1" ;;
    1) ramp="1" ;;
    2) ramp="1" ;;
    3) ramp="2" ;;
    4) ramp="2" ;;
    5) ramp="3" ;;
    6) ramp="3" ;;
    7) ramp="4" ;;
    *) ramp="4" ;;
esac

var="bar.ramp-$ramp"
color=$(xrdbvar $var)

time=$(date +"%H:%M")

msg="%{B$color}  $time  %{B-}"

echo "$msg"
