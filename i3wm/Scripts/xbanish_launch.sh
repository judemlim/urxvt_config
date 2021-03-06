#!/bin/bash

# Terminate already running bar instances
killall -q xbanish

# Wait until the processes have been shut down
while pgrep -u $UID -x xbanish >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
xbanish &

echo "xbanish launched..."
