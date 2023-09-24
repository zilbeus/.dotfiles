/home/zilq/.screenlayout/main.sh
/home/zilq/.fehbg
xset s off -dpms
WINIT_HIDPI_FACTOR=1
xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr
redshift &
setxkbmap -option grp:win_space_toggle us,ee,ru
exec /usr/bin/bspwm
