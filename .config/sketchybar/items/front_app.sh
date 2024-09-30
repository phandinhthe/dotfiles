#!/bin/sh

sketchybar --add item front_app left                                              \
           --set front_app       background.color=$Green                     \
                                 background.padding_right=10                      \
                                 background.corner_radius=10                      \
                                                                                  \
                                 icon.padding_left=10                             \
                                 icon.padding_right=5                             \
                                 icon.color=$Mantle                               \
                                 icon.font="sketchybar-app-font:Regular:14.0"     \
                                                                                  \
                                 label.padding_right=10                           \
                                 label.color=$Mantle                              \
                                 script="$PLUGIN_DIR/front_app.sh"                \
           --subscribe front_app front_app_switched
