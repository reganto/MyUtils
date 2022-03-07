#!/bin/bash


while true
    do 
        export DISPLAY=:0.0
        battery_level=`cat /sys/class/power_supply/BAT0/capacity`
        battery_status=`cat /sys/class/power_supply/BAT0/status`
        if [ $battery_status=="Charging" ]; then
            if [ $battery_level -ge 85 ]; then
                # kdialog --msgbox "Battery fully charged" 5
		        notify-send -u critical "Battery fully charged"
            fi
        fi
        sleep 300
    done

