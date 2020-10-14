#!/bin/bash


if [ "$(timeout 1 playerctl status)" = "" ]; then
	(echo) &
elif	[[ "$(playerctl status)" = "Playing" || "$(playerctl status)" = "Paused" ]]; then
	(playerctl metadata --format '{{title}} %{F#919dc4} {{artist}}') &
else
	(echo "")
fi
