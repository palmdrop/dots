#!/bin/bash

killall dunst
xrdb-replace $XDG_CONFIG_HOME/dunst/dunstrc dunst 

notify-send -u low      "Testing low"
notify-send -u normal   "Testing normal"
notify-send -u critical "Testing critical"

