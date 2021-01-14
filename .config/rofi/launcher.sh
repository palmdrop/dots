#!/usr/bin/env bash


## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

## NOTE: HEAVILY MODIFIED BY ME, PALMDROP

theme="style"
dir="$HOME/.config/rofi"
colors="$dir/colors.rasi"

[[ -f $colors ]] || {
cat > $colors <<- EOF
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

echo "up"
}

rofi -no-lazy-grab \
-modi drun,run \
-matching fuzzy \
-theme $dir/"$theme" $@

