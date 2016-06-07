#!/bin/bash
#[ -f /etc/xprofile ] && source /etc/xprofile

export PATH=$PATH:~/bin
export QT_GRAPHICSSYSTEM=native

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb -merge "${HOME}/.Xresources" &
xset b off &                                    # disable annoying system beep
#### compton -bC --no-fading-openclose &                                      # for compositing
compton --config=/home/tyadam/.config/compton.conf &
xset +fp /usr/share/fonts/local &
xset fp rehash &
xset r rate 300 40 &                            # set pleasant key repeat delay/rate
xfce4-power-manager &
pulseaudio --start &
#####pa-applet &
nm-applet --sm-disable &
xscreensaver -no-splash &
#volumeicon &

nitrogen --restore  &                           # set two wallpapers
thunar --daemon &                               # make starting thunar faster later

xbindkeys &
xkbset -a &
synergy &
menutray -g &
sleep 2 && pidgin &
#sleep 2 && compton --config=/home/tyadam/.config/compton.conf
sleep 2 && x11vnc -many -rfbauth ~/.x11vncpass &
eval $(ssh-agent) && ssh-add /home/tyadam/.ssh/id_dsa.archivas_weak /home/tyadam/.ssh/id_rsa_tyadam
# crd --restart &
#exec ck-launch-session dbus-launch i3
# DISPLAY=:0 cinnamon-session &
exec dbus-launch i3
#exec ck-launch-session i3
#exec i3 -V >> ~/i3log-$(date +'%F-%k-%M-%S') 2>&1
