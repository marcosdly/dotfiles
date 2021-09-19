#!/usr/bin/env sh

#                                        _ _       
#  _ __ ___   __ _ _ __ ___ ___  ___  __| | |_   _ 
# | '_ ` _ \ / _` | '__/ __/ _ \/ __|/ _` | | | | |
# | | | | | | (_| | | | (_| (_) \__ \ (_| | | |_| |
# |_| |_| |_|\__,_|_|  \___\___/|___/\__,_|_|\__, |
#                                            |___/ 
# This script was created by marcosdly.
#
# Launch script for polybar.

# Original file: https://github.com/mgattozzi/polybar/blob/master/launch.sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch
xrandr | grep 'HDMI1 connected'
if [[ $? -eq 0 ]]; then
polybar --config=${HOME}/.config/polybar/moon bspwm-moon1m &
polybar --config=${HOME}/.config/polybar/moon bspwm-moon2m &
else
polybar --config=${HOME}/.config/polybar/moon bspwm-moon1m &
fi

echo "Bar launched..."
