#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Run on all the monitors
for monitor in $(polybar --list-monitors | cut -d":" -f1); do
  echo "---" | tee -a /tmp/polybar-bottom1.log
  MONITOR=$monitor polybar --reload bottom1 2>&1 | tee -a /tmp/polybar-bottom1.log & disown
done
echo "Bars launched..."
