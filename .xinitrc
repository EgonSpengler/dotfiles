#!/bin/bash
[ -f /etc/xprofile ] && source /etc/xprofile

export PATH=$HOME/bin:$PATH:
#export QT_GRAPHICSSYSTEM=native

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xmodmap $HOME/.Xmodmap
xset +fp /usr/share/fonts/local &
xset fp rehash &
xfce4-power-manager &
xrdb -merge "${HOME}/.Xresources" &
xmodmap $HOME/.Xmodmap

# system-specific startup scripts
$HOME/.xinit-local

exec ck-launch-session i3
# exec dbus-launch i3
