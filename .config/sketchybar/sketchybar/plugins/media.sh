#!/bin/sh

source "$CONFIG_DIR/colors.sh"

STATE="$(echo "$INFO" | jq -r '.state')"
APP="$(echo $INFO | jq -r '.app')"
ICON=􀑪
COLOR=$Mauve

if [ "$APP" == "Safari" ]; then 
  ICON=
  COLOR=$Blue
elif [ "$APP" = "Spotify" ]; then
  ICON=
  COLOR=$Green
fi


if [ "$STATE" = "playing" ]; then
  MEDIA="$(echo "$INFO" | jq -r '.title + " - " + .artist')"
  sketchybar --set $NAME label="$MEDIA" drawing=on \
                          icon=$ICON                \
                          background.border_color=$COLOR \
                          icon.color=$COLOR \
                          label.color=$COLOR
else
  sketchybar --set $NAME drawing=off
fi
