#!/bin/sh

# A modular status bar for dwm
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: xorg-xsetroot

# Import functions with "$include /route/to/module"
# It is recommended that you place functions in the subdirectory ./bar-functions and use: . "$DIR/bar-functions/dwm_example.sh"

# Store the directory the script is running from
LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

# Change the appearance of the module identifier. if this is set to "unicode", then symbols will be used as identifiers instead of text. E.g. [📪 0] instead of [MAIL 0].
# Requires a font with adequate unicode character support
export IDENTIFIER="unicode"

# Change the charachter(s) used to seperate modules. If two are used, they will be placed at the start and end.
export SEP1=" "
export SEP2=" "

# Import the modules
. "$DIR/bar-functions/dwm_memory.sh"
. "$DIR/bar-functions/dwm_countdown.sh"
. "$DIR/bar-functions/dwm_alarm.sh"
. "$DIR/bar-functions/dwm_transmission.sh"
. "$DIR/bar-functions/dwm_cmus.sh"
. "$DIR/bar-functions/dwm_mpc.sh"
. "$DIR/bar-functions/dwm_spotify.sh"
. "$DIR/bar-functions/dwm_resources.sh"
. "$DIR/bar-functions/dwm_battery.sh"
. "$DIR/bar-functions/dwm_mail.sh"
. "$DIR/bar-functions/dwm_backlight.sh"
. "$DIR/bar-functions/dwm_alsa.sh"
. "$DIR/bar-functions/dwm_pulse.sh"
. "$DIR/bar-functions/dwm_weather.sh"
. "$DIR/bar-functions/dwm_vpn.sh"
. "$DIR/bar-functions/dwm_networkmanager.sh"
. "$DIR/bar-functions/dwm_keyboard.sh"
. "$DIR/bar-functions/dwm_ccurse.sh"
. "$DIR/bar-functions/dwm_date.sh"
. "$DIR/bar-functions/dwm_connman.sh"
. "$DIR/bar-functions/dwm_loadavg.sh"
. "$DIR/bar-functions/dwm_modem.sh"
. "$DIR/bar-functions/dwm_caps.sh"

# Update dwm status bar every second
while true
do

    # Append results of each func one by one to a string
    #dispstr=""
   #dispstr="$dispstr$(dwm_connman)"
   #dispstr="$dispstr$(dwm_countdown)"
   #dispstr="$dispstr$(dwm_alarm)"
   #dispstr="$dispstr$(dwm_transmission)"
   #dispstr="$dispstr$(dwm_cmus)"
   #dispstr="$dispstr$(dwm_mpc)"
   #dispstr="$dispstr$(dwm_spotify)"
   #dispstr="$dispstr$(dwm_resources)"
    dispstr="$dispstr$(dwm_battery)"
    dispstr="$dispstr$(dwm_memory)"
    dispstr="$dispstr$(dwm_caps)"
   #dispstr="$dispstr$(dwm_mail)"
    dispstr="$dispstr$(dwm_backlight)"
    dispstr="$dispstr$(dwm_alsa)"
   #dispstr="$dispstr$(dwm_pulse)"
   #dispstr="$dispstr$(dwm_weather)"
   #dispstr="$dispstr$(dwm_vpn)"
    dispstr="$dispstr$(dwm_networkmanager)"
   #dispstr="$dispstr$(dwm_modem)"
   #dispstr="$dispstr$(dwm_keyboard)"
   #dispstr="$dispstr$(dwm_ccurse)"
    dispstr="$dispstr$(dwm_date)"
   #dispstr="$dispstr$(dwm_loadavg)"

    xsetroot -name "^c#bbbbbb^^b#005577^ $(dwm_caps)^c#6cbe6c^^b#005577^ $(dwm_battery) ^c#FF8A65^^b#005577^$(dwm_memory) ^c#fce94f^^b#005577^$(dwm_backlight)^c#bd93f9^^b#005577^$(dwm_alsa) ^c#00b39e^^b#005577^$(dwm_modem) ^c#86cbfe^^b#005577^$(dwm_date)"
    sleep 1

done

