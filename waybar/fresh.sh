#!/bin/sh
while true; do
    killall -SIGUSR2 waybar
    sleep 5
done
