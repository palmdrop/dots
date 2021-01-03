#!/bin/bash

# Get volume level
v=$(vol print)

# background
bg=$(xrdbvar bar.background)

# Color for empty step
blank=$(xrdbvar bar.ramp2)
# Mute color
mute=$(xrdbvar bar.foreground)
# Color if volume is above 100%
high=$(xrdbvar bar.alert)
# Volume step color
step=$(xrdbvar bar.primary)

# If muted, replace step with mute color
if (( $v > 100 )); then
    step=$high
elif [ "$(vol muted)" = "true" ]; then
    step=$mute
fi

# Define variables
fs=$(( $v/10 ))
if (( $fs > 10 )); then
    fs=10
fi

es=$(( 10 - fs ))

filled_steps=$(printf "%${fs}s" | sed 's/ /|/g')
empty_steps=$(printf "%${es}s" | sed 's/ /|/g')

echo -e "%{B$bg}%{F$step}  $filled_steps%{B-F-}%{B$bg}%{F$blank}$empty_steps  %{B-F-}"
