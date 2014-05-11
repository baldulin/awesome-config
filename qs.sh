#!/bin/bash

LINE_SEL=`cat ~/.config/awesome/quickstarter | awk -F '.' '{print $1 }' | dmenu -l 7`

if [ -n "$LINE_SEL" ] 
 then 
	eval "`cat ~/.config/awesome/quickstarter | fgrep "$LINE_SEL" | awk -F '.' '{print $2}'`"
fi

