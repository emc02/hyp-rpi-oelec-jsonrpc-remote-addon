#!/bin/sh
SERVICE='hyperiond'
if ps | grep -v grep | grep $SERVICE > /dev/null
then
echo "1" > /sys/class/gpio/gpio4/value
killall hyperiond
else
echo "0" > /sys/class/gpio/gpio4/value
#/storage/hyperion/bin/hyperiond.sh /storage/.config/hyperion.config.json 
#</dev/null >/dev/null 2>&1 &
/storage/hyperion/bin/hyperiond.sh /storage/.config/hyperion.config.json > /storage/logfiles/hyperion.log 2>&1 &
fi
