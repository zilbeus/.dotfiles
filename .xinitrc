xsetroot -cursor_name left_ptr
xset s off -dpms
WINIT_HIDPI_FACTOR=1
xrdb -merge ~/.Xresources
redshift &
/home/zilq/.screenlayout/main.sh
/home/zilq/.fehbg
setxkbmap -option grp:win_space_toggle us,ee,ru
exec /usr/bin/bspwm
