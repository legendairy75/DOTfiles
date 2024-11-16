#!/usr/bin//env bash

# killall -q polybar
#
# echo "---" | tee -a /tmp/polybar.log
# polybar tonton 2>&1 | tee -a /tmp/polybar.log &
# disown
# echo "Bars launched..."

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload toph &
  done
else
  polybar --reload toph &
fi
