#!/bin/dash
feh --bg-center yourwall &

if [ `pidof urxvtd | wc -l` -lt 1 ] ; then
urxvtd -q -f -o
urxvtc
wmfs -c tag 3
urxvtc
wmfs -c tag 5
urxvtc
wmfs -c screen_select 0
urxvtc -T Irc -e ssh foo@bar
wmfs -c tag 3
urxvtc
wmfs -c tag 1
wmfs -c screen_select 1
wmfs -c tag 2
fi

[ `pidof conky-cli | wc -l` != 1 ] && conky-cli -c ~/.config/wmfs/conkyrc >> /tmp/.conk 2> /dev/null &

[ `pidof conky | wc -l` != 1 ] && conky 2> /dev/null &
