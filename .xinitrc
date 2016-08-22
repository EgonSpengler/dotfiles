#!/bin/bash

export PATH=$PATH:~/bin
export QT_GRAPHICSSYSTEM=native

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb -merge "${HOME}/.Xresources" &
xset b off &                                       # disable annoying system beep
compton --config=/home/egon/.config/compton.conf & # for compositing
xset +fp /usr/share/fonts/local &
xset fp rehash &
xset r rate 300 40 &                               # set pleasant key repeat delay/rate
xfce4-power-manager &
pulseaudio --start &
#pa-applet &
nm-applet --sm-disable &
xscreensaver -no-splash &
nitrogen --restore  &                             # set wallpapers
thunar --daemon &                                 # make starting thunar faster later

xbindkeys &
xkbset -a &
synergy &
menutray -g &
xmodmap ~/.Xmodmap &&
$HOME/.xinit-local                                # system-specific startup scripts
exec ck-launch-session i3
# exec dbus-launch i3
