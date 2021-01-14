#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

# Available Styles
# >> Created and tested on : rofi 1.6.0-1
#
# style_1     style_2     style_3     style_4     style_5     style_6     style_7

theme="style_2"

dir="$HOME/.config/rofi/launchers/text"

cat > $dir/colors.rasi <<- EOF
    /* colors */

    * {
        al:      #00000000;
        bg:      $(xrdbvar rofi.background);
        se:      $(xrdbvar rofi.select);
        fg:      $(xrdbvar rofi.foreground);
        ac:      $(xrdbvar rofi.accent);
        red:     $(xrdbvar color1);
        green:   $(xrdbvar color2);
        yellow:  $(xrdbvar color3);
        blue:    $(xrdbvar color4);
        purple:  $(xrdbvar color5);
        cyan:    $(xrdbvar color6);
    }
EOF

rofi -no-lazy-grab -show drun \
-modi run,drun,window \
-theme $dir/"$theme"

