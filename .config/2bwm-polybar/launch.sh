#!/bin/bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c ~/.config/2bwm-polybar/config.ini main & disown


