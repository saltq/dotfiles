#!/bin/sh

userresources=$HOME/.cache/wal/colors.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi


# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
 xrandr --output VGA-0 --mode 1280x1024 --pos 1920x0 --output HDMI-0 --mode 1920x1080 --pos 0x0
#pulseaudio --start
ibus-daemon -drx
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
xbindkeys
dwmblocks &
nitrogen --restore &
picom &
export _JAVA_AWT_WM_NONREPARENTING=1
rmmod pcspkr
exec dwm
#/usr/bin/qtile start
