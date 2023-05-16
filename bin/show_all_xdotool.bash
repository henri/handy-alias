#!/bin/bash
for WINDOW in $(xdotool search --desktop 0 $1); do
   xdotool windowactivate ${WINDOW}
done
