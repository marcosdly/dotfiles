#! /usr/bin/env sh

# Programs to run at start
xsetroot -cursor_name left_ptr &
${HOME}/.fehbg
#${HOME}/.config/polybar/others-moon.sh &
#sxhkd -c ~/.config/sxhkd/general &
picom &
lxsession &
setxkbmap br &
xset -dpms s off &
${HOME}/battery-status.sh &
paplay --volume=45875 /usr/share/sounds/freedesktop/stereo/service-login.oga & # 70% volume

#xautolock -time 10 -locker "betterlockscreen -u /home/marcosdly/Documents/config-files-and-stuff/wallpapers/moon-01.jpg -l blur" -notify 60 -notifier "notify-send" -detectsleep &
#spotify-listener &
#disown # Required by polybar-spotify-module documentation
