#! /usr/bin/env bash

while true
do
	battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
	if [ $battery_level -le 20 ]; then
		notify-send --urgency=CRITICAL "Battery Low" "Level: ${battery_level}%"
		paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga
	#elif [ $battery_level -ge 98 ]; then
        	#notify-send --urgency=NORMAL "Battery Full" "Level: ${battery_level}%"
		#paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga
	fi
sleep 60
done
