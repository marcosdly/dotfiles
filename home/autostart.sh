#! /usr/bin/env bash

# ESSENTIAL
xsetroot -cursor_name left_ptr &
picom &
lxsession &
setxkbmap br &
xset -dpms s off &
sxhkd -c ~/.config/sxhkd/qtile &
volctl &

# OPTIONAL
cbatticon -u 20 -i "standard" -l 30 -r 15 BAT0
# ${HOME}/.fehbg
# ${HOME}/.config/polybar/others-moon.sh &
# paplay --volume=45875 /usr/share/sounds/freedesktop/stereo/service-login.oga & # 70% volume
# xautolock -time 10 -locker "betterlockscreen -u /home/marcosdly/Documents/config-files-and-stuff/wallpapers/moon-01.jpg -l blur" -notify 60 -notifier "notify-send" -detectsleep &
# spotify-listener &

