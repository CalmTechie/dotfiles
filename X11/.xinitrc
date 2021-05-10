urxvtd -o -q -f
udiskie &
xrdb -merge ~/.config/X11/.Xresources
exec i3
