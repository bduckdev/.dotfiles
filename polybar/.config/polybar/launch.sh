#! /bin/sh

killall -q polybar

while pgrep polybar >/dev/null; do sleep 1; done

polybar primary &

if xrandr | grep 'DP-1-2 connected'; then
	polybar fakenews &
	polybar secondary &
fi
