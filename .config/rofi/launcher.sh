#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

## NOTE: HEAVILY MODIFIED BY ME, PALMDROP

#theme="style"
#dir="$HOME/.config/rofi"

rofi -no-lazy-grab \
-modi drun,run $@
#-matching fuzzy $@
#-theme $dir/"$theme" $@

