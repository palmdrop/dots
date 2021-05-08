#!/bin/bash
volumeText=$1
muteText=$2

text=$volumeText

# Get volume level
v=$(vol print)

# background
bg=$(xrdbvar bar.background-alt)

# Color for empty step
blank=$(xrdbvar bar.foreground-alt)

# Mute color
mute=$(xrdbvar bar.extra)

# Color if volume is above 100%
high=$(xrdbvar bar.ws-focused)

# Volume step color
step=$(xrdbvar bar.extra)

# If muted, replace step with mute color
if [ "$(vol muted)" = "true" ]; then
    step=$mute
    text=$muteText
fi

$XDG_CONFIG_HOME/bspwm-polybar/scripts/text-indicator.sh "$text" $v 100 $bg $blank $step $high
