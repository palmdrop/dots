#!/usr/bin/env bash

## NOTE: launch script has been heavily modified by @palmdrop

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

theme="style_8"
dir="$HOME/.config/rofi/"

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

#rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme" $@
rofi -no-lazy-grab -matching fuzzy -theme $dir/"$theme" $@
