#!/bin/dash
#feh --bg-center /home/erus/.walls/conky.png&
feh --bg-center /home/erus/.walls/conky_new.png&

if [ `pidof urxvtd | wc -l` -lt 1 ] ; then
urxvtd -q -f -o
urxvtc
wmfs -c tag 3
urxvtc
wmfs -c screen_prev_sel
urxvtc -name Irc -e ssh erus@compaq -t 'tmux -lu a'
wmfs -c tag 3
urxvtc
wmfs -c tag 1
wmfs -c screen_prev_sel
wmfs -c tag 2
fi

[ `pidof conky-cli | wc -l` != 1 ] && conky-cli -c /home/erus/.config/wmfs/conkyrc >> /tmp/.conk 2> /dev/null &

[ `pidof conky | wc -l` != 1 ] && conky 2> /dev/null &

[ `pidof fbpanel | wc -l` != 1 ] && fbpanel &

killall updates_pacman.sh ; /home/erus/.config/wmfs/updates_pacman.sh &
