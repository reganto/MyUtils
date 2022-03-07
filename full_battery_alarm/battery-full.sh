#!/bin/bash
while true
    do
        export DISPLAY=:0.0
        battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
        if on_ac_power; then                                #check if AC is plugged in
            if [ $battery_level -ge 40 ]; then              #check if the battery level is over 90%
                kdialog --msgbox "Battery is full" 5
            fi
        fi
      sleep 300                                             #wait for 300 seconds before checking again

    done

# https://askubuntu.com/questions/1157608/how-do-i-set-battery-full-alert-tone-in-ubuntu-18-04-to-save-battery-wear-out
