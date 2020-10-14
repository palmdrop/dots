#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar
rm /tmp/polybar.pids

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -c ~/.config/polybar/config.ini main &
echo "$!" >> /tmp/polybar.pids
polybar -c ~/.config/polybar/config.ini secondary &
echo "$!" >> /tmp/polybar.pids

# sleep 0.1

for i in {1..100}
do
    $HOME/.config/polybar/polybar-msg-number.sh 2 cmd hide
    sleep 0.001
done

