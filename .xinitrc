#set Keymap to de (nodeadkeys)
setxkbmap de
setxkbmap -variant nodeadkeys

#enable auto screenlock, uses own lock script  /usr/bin/lock
#xautolock -time 10 -locker lock

#following line is necessary to fetch configurations written in Xresources (eg for urxvt)
xrdb -merge ~/.Xresources

#enable to start i3WM
exec i3

#enable to start KDE
#exec startkde

#exec xfce4-session
#exec cinnamon-session

