#!/usr/bin/env bash
pkill polybar
hc() { "${herbstclient_command[@]:-herbstclient}" "$@" ;}
MONITOR=${1:-0}
polybar main &
hc pad $MONITOR 34 1 1 1


