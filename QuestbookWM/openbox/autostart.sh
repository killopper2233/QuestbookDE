## Adjust the screen res
xrandr --auto &
xset -b

## Start the window manager.
cd .config/polybar &&
bash ~/.config/polybar/launch.sh --docky &
xcompmgr &
polybar &
