#!/bin/sh
##### Adding Mission Control Space Indicators #####
# Now we add some mission control spaces:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item
# to indicate active and available mission control spaces

#SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")
SPACE_SIDS=(1 2 3 4 5 6 7 8 9 10)

for sid in "${SPACE_SIDS[@]}"
do
  sketchybar  --add space space.$sid left                                                 \
              --set space.$sid  space=$sid                                                 \
                                icon="$sid 􀆓􀏜"                                            \
                                icon.padding_left=10                                      \
                                                                                          \
                                background.border_width=1                                 \
                                background.corner_radius=10                               \
                                background.drawing=on                                     \
                                background.padding_right=10                               \
                                background.color=$Red                                    \
                                                                                           \
                                label.drawing=on                                          \
                                label.padding_right=15                                    \
                                icon.color=$Mantle                                        \
                                label.font="sketchybar-app-font:Regular:12.0"             \
                                                                                          \
                                script="$PLUGIN_DIR/space.sh"
done
