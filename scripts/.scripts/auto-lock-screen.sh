#!/bin/bash

# Find active window id
get_active_id() {
	xprop -root | awk '$1 ~ /_NET_ACTIVE_WINDOW/ { print $5 }'
}

# Determine if a window is fullscreen based on it's ID
is_fullscreen() {
	! xprop -id $1 | grep _NET_WM_STATE_FULLSCREEN > /dev/null
	return $?
}

# main()
id=$(get_active_id)
if is_fullscreen $id; then
	$HOME/scripts/overlay-lock.sh
fi
