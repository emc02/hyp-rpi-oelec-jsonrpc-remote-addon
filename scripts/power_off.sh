#!/bin/sh
echo "1" > /sys/class/gpio/gpio4/value
killall hyperiond
