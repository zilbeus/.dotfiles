/home/zilq/.screenlayout/main.sh
/home/zilq/.fehbg
xset s off -dpms
WINIT_HIDPI_FACTOR=1
xrdb -merge ~/.Xresources
conky &
xsetroot -cursor_name left_ptr
redshift &
setxkbmap -layout us
emacs --daemon &
/usr/libexec/xfce-polkit &
dunst &
exec /usr/bin/bspwm
