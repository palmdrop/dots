#!/bin/bash
today=$(tasks today) 
overdue=$(tasks overdue)

if [ $today -eq "1" ]; then 
    text="task"
else
    text="tasks"
fi

if [ $overdue -ne "0" ]; then 
    color=$(xrdbvar bar.ws-focused)
else 
    color=$(xrdbvar bar.alert)
fi

msg="%{F$color}$(number-to-letters $today) $text%{F-}"

echo "$msg"
