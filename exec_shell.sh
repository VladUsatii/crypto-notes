#!/bin/bash
osascript -e 'tell application "System Events" to tell process "Terminal" to keystroke "t" using command down' > /dev/null
osascript -e "tell application \"Terminal\" to do script \"cd $PWD && clear && less -FX README.md\" in window 1" > /dev/null
