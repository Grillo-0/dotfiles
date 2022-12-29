#!/bin/bash

overlay=$HOME/Pictures/wallpapers/lockoverlay.png

maim | convert - -scale 10% -scale 1000% - | composite -gravity southeast $overlay - /tmp/lockbackground.png
i3lock -i /tmp/lockbackground.png -e --nofork
