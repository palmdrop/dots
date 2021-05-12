#!/bin/bash

killall dunst
#xrdb-replace $XDG_CONFIG_HOME/dunst/dunstrc dunst 

notify-send -u low      "low"
notify-send -u normal   "normal"
notify-send -u critical "critical"

