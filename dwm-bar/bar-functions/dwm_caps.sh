#!/bin/sh

# A dwm_bar function that displays the Caps Lock status

dwm_caps () {
	CAPS=$(xset -q | grep Caps | awk '{print $4}')
	if [ "$CAPS" = "on" ]; then 
		printf "󰌌󰜷"
		#printf "󰚲 󰚿"
	else 
	if [ "$CAPS" = "off" ]; then
		printf "󰌓󰘶"
	fi
fi
}

dwm_caps