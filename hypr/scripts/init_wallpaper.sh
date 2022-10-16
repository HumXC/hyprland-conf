#!/bin/bash
sleep 1
wallpaper=$HOME/.config/hypr/wallpaper
for file in $wallpaper/*
do
	swww img $file
	break
done
