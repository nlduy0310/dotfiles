#!/bin/bash

# Options
options="Lock\nSuspend\nLogout\nReboot\nShutdown"

# Rofi command
chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power")

case $chosen in
    Lock)
        swaylock
        ;;
    Suspend)
        swaylock && systemctl suspend
        ;;
    Logout)
        swaymsg exit
        ;;
    Reboot)
        systemctl reboot
        ;;
    Shutdown)
        systemctl poweroff
        ;;
esac
