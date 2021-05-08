#!/bin/bash

# Get volume level
v=$(vol print)

# background
bg=$(xrdbvar bar.background-alt)

# Color for empty step
blank=$(xrdbvar bar.extra)
# Mute color
mute=$(xrdbvar bar.background-alt)
# Color if volume is above 100%
high=$(xrdbvar bar.ws-focused)
# Volume step color
step=$(xrdbvar bar.ramp3)

# If muted, replace step with mute color
if [ "$(vol muted)" = "true" ]; then
    step=$mute
elif (( $v > 100 )); then
    step=$high
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
