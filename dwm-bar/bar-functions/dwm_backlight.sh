#!/bin/sh

# A dwm_bar module to display the current backlight brighness with xbacklight
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: xbacklight

dwm_backlight () {
    #printf "%sī %.0f%s\n" "$SEP1" "$(xbacklight)" "$SEP2"
    printf "ķ° %.0f%s\n" "$(xbacklight)"
}

dwm_backlight
