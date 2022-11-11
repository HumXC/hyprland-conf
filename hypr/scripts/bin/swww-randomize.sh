#!/bin/bash

# origin: swww example script
# This script will randomly go through the files of a directory, setting it
# up as the wallpaper at regular intervals
#
# NOTE: this script is in bash (not posix shell), because the RANDOM variable
# we use is not defined in posix
dir=$HOME/.config/hypr/wallpaper
# Edit bellow to control the images transition
export SWWW_TRANSITION_FPS=60
export SWWW_TRANSITION_STEP=2
# This controls (in seconds) when to switch to the next image
INTERVAL=120
once="once"
if [ "$1" == "$once" ]; then
	find "$dir"\
	| while read -r img; do
		if [ "$img" != "$dir" ];then
			echo "$((RANDOM % 1000)):$img"
		fi
	done \
	| sort -n | cut -d':' -f2- \
	| while read -r img; do
	echo "$img"
		swww img "$img"
		break
	done

else

	while true; do
		find "$dir"\
			| while read -r img; do
				if [ "$img" != "$dir" ];then
					echo "$((RANDOM % 1000)):$img"
				fi
			done \
			| sort -n | cut -d':' -f2- \
			| while read -r img; do
			echo "$img"
				swww img "$img"
				sleep $INTERVAL
			done
	done
fi



