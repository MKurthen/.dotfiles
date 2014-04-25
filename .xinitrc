#set Keymap to de (nodeadkeys)
setxkbmap de
setxkbmap -variant nodeadkeys

#following line is necessary to fetch configurations written in Xresources (eg for urxvt)
xrdb -merge ~/.Xresources

#enable to start i3WM
exec i3

#enable to start KDE
#exec startkde

