#!/bin/sh

# Set brightness via xbrightness when redshift status changes

# Set brightness values for each status.
# Range from 1 to 100 is valid
brightness_day=100
brightness_transition=50
brightness_night=10
# Set fade time for changes to one minute
fade_time=60000

if [ "$1" = period-changed ]; then
	case $3 in
		night)
			xbacklight -S $brightness_night
			;;
		transition)
			xbacklight -S $brightness_transition
			;;
		daytime)
			xbacklight -S $brightness_day
			;;
	esac
fi
