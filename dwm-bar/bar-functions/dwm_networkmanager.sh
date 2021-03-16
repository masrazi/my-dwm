#!/bin/sh

# A dwm_bar function to show the current network connection/SSID, private IP, and public IP using NetworkManager
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: NetworkManager, curl

dwm_networkmanager () {
    NAME=$(nmcli -a | grep 'Wired connection' | awk 'NR==1{print $1}')
    if [ "$NAME" = "" ]; then
         NAME=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -c 5-)
    fi
    TYPE=$(nmcli -t -f TYPE connection show --active | head -n 1)

    case "${TYPE}" in
        vpn*)
            ICON=" "
            ;;
        *ethernet*)
            ICON="󰯎"
            ;;
        *wireless)
            ICON="󰤨"
            ;;
        *)
            ICON="󱍢"
            NAME="Ups"
            ;;
    esac

    echo "${ICON} ${NAME}"
    #echo "${COLOR}"

#    case $BLOCK_BUTTON in
#        1)
#            termite -e nmtui-connect --class=floating
#            ;;
#    esac

#    exit 0
}

dwm_networkmanager
