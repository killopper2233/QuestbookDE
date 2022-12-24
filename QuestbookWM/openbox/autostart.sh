## Adjust the screen res
xrandr --auto &
xset -b

## Start the window manager.
cd
cd .config/polybar &
./launch.sh --forest &
xcompmgr &
polybar &
