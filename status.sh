#!/bin/dash
[ -e /tmp/.conk ] || wmfs -c reload &
wmfs -s "`tail -n 1 /tmp/.conk | ~/.config/wmfs/wrapper.sh`"
