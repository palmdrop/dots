#!/bin/bash

# Kill all current polybar instances
killall -q polybar

# Wait for all polybar instances to terminate
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch main and secondary bar
polybar -c ~/.config/bspwm-polybar/config.ini main &
#polybar -c ~/.config/bspwm-polybar/config.ini secondary &

#polybar -c ~/.config/bspwm-polybar/config.ini notify1 &
#polybar -c ~/.config/bspwm-polybar/config.ini notify2 &
#polybar -c ~/.config/bspwm-polybar/config.ini extra &
