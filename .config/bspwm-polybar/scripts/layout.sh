#!/bin/bash
layout=$(bsp-layout get $(bspc query -D -d --names))

case $layout in
    -|tiled)
        symbol=
        ;;
    monocle)
        symbol=
        ;;
    even)
        symbol=E
        ;;
    grid)
        symbol=
        ;;
    rgrid)
        symbol=
        ;;
    rtall)
        symbol=!
        ;;
    rwide)
        symbol=!
        ;;
    tall)
        symbol=
        ;;
    wide)
        symbol=
        ;;
    *)
        symbol=""
        ;;
esac

if [ "$layout" = "-" ] || [ "$layout" = "tiled" ]; then
    cl=$(xrdbvar bar.background-module)
else 
    cl=$(xrdbvar bar.alert)
fi

echo "%{B$cl} $symbol %{B-}"
