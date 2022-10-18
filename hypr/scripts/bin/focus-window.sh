#!/bin/bash


# Usage: focus-window.sh [命令] [hyprland：window class name]
# focus-window.sh kitty kitty
s=$(hyprctl clients | grep "class: $2")
if [ -z $s ];then
    hyprctl dispatch exec $1
else
    hyprctl dispatch focuswindow "$2"
fi
