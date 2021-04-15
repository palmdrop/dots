#!/bin/bash
text=$1

# Get battery level
v=$(bat)

# background
bg=$(xrdbvar bar.background-alt)

# Color for empty step
blank=$(xrdbvar bar.foreground-alt)

# Color if battery somehow is above 100%
high=$(xrdbvar bar.ws-focused)

# Volume step color
#step=$(xrdbvar bar.ramp3)
if [ $v -le "20" ]; then
    step=$(xrdbvar bar.ws-focused)
elif [ $v -le "50" ]; then
    step=$(xrdbvar bar.alert)
else 
    step=$(xrdbvar bar.extra)
fi

if [ $v -gt "90" ]; then
    v=100
    echo ""
else 
    $XDG_CONFIG_HOME/bspwm-polybar/scripts/text-indicator.sh "$text" $v 100 $bg $blank $step $high
fi
