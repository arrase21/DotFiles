
#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# polybar master &
polybar LVDS1 &
polybar HDMI1 &

echo "Polybar launched..."
