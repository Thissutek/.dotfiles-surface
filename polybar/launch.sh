#!/bin/bash

# Kill existing bars
killall -q polybar

# Wait until all bars have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

# Launch main bar (use the name from your polybar config, usually "example" or "main")
polybar example &

# For multi-monitor setups (optional)
# for m in $(polybar --list-monitors | cut -d":" -f1); do
#     MONITOR=$m polybar --reload main &
# done

