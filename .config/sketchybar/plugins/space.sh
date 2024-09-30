#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item
source "$CONFIG_DIR/colors.sh"
if [ $SELECTED = true ]; then
  sketchybar --set $NAME  background.drawing=on       \
                          background.color=$Red      \
                          icon.color=$Mantle
else
  sketchybar --set  $NAME background.drawing=on      \
                          icon.color=$Red \
                          label.color=$Mantle \
                          background.color=$Mantle \

fi
