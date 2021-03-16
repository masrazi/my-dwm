#!/bin/sh

dwm_modem () {
	wget -q --tries=10 --timeout=20 --spider http://google.com
	if [[ $? -eq 0 ]]; then
        printf "󰣺 %sHSDPA "
	else
        printf "󰣺 %s %s"
	fi
}
dwm_modem
