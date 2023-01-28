#!/bin/bash

/usr/bin/setxkbmap -option "caps:escape"

/usr/bin/setxkbmap -layout "us,ar" -option "grp:win_space_toggle"
# /usr/bin/setxkbmap -layout "us,ar,sy" -variant ",,syc" -option "grp:win_space_toggle"

xinput set-prop "ELAN1205:00 04F3:30E9 Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "ELAN1205:00 04F3:30E9 Touchpad" "libinput Natural Scrolling Enabled" 1
xset r rate 500 40

# compton --backend glx --vsync opengl-swc&
picom --backend glx --xrender-sync-fence & # --vsync &

nm-applet&
