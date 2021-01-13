#!/usr/bin/env bash

## NOTE: launch script has been heavily modified by @palmdrop

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

# Available Styles
# >> Created and tested on : rofi 1.6.0-1
#
# style_1     style_2     style_3     style_4     style_5     style_6
# style_7     style_8     style_9     style_10    style_11    style_12

theme="style_8"
dir="$HOME/.config/rofi/launchers/colorful"

# dark
ALPHA="#00000000"
BG="$(xrdbvar rofi.background)ff"
FG="$(xrdbvar rofi.foreground)ff"
SELECT="$(xrdbvar rofi.select)ff"
ACCENT="$(xrdbvar rofi.accent)ff"

# light
#ALPHA="#00000000"
#BG="#FFFFFFff"
#FG="#000000ff"
#SELECT="#f3f3f3ff"

# accent colors
#COLORS=('#EC7875' '#61C766' '#FDD835' '#42A5F5' '#BA68C8' '#4DD0E1' '#00B19F' \
#		'#FBC02D' '#E57C46' '#AC8476' '#6D8895' '#EC407A' '#B9C244' '#6C77BB')
#ACCENT="${COLORS[$(( $RANDOM % 14 ))]}ff"

# overwrite colors file
cat > $dir/colors.rasi <<- EOF
	/* colors */

	* {
	  al:  $ALPHA;
	  bg:  $BG;
	  se:  $SELECT;
	  fg:  $FG;
	  ac:  $ACCENT;
	}
EOF

# comment these lines to disable random style
#themes=($(/usr/bin/ls -p --hide="launcher.sh" --hide="colors.rasi" $dir))
#theme="${themes[$(( $RANDOM % 12 ))]}"

#echo $theme

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme" $@
