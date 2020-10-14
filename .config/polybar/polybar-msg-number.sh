#!/bin/bash

PID=$(head -$1 /tmp/polybar.pids | tail -1)
polybar-msg -p $PID $2 $3






