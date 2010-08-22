#!/bin/dash
[ -e /tmp/.conk ] || wmfs -c reload &
wmfs -s 0 "`tail -n 1 /tmp/.conk | /home/erus/.config/wmfs/wrapper.sh`"
