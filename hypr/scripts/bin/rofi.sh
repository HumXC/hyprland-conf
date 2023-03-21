#!/usr/bin/env bash
# 使用此脚本需要安装 https://github.com/adi1090x/rofi
# Usage: rofi.sh type-3 style-3 drun
dir="$HOME/.config/rofi/launchers/$1"
theme=$2
show=$3

## Run
rofi \
    -show $show -theme ${dir}/${theme}.rasi -normal-window $4
