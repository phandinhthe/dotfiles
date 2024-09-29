#!/bin/sh
sketchybar --add item display   center                                              \
           --set display        background.color=$Mauve                           \
                                background.padding_right=10                       \
                                background.corner_radius=10                       \
                                                                                  \
                                 icon.padding_left=10                             \
                                 icon.padding_right=5                             \
                                 icon.color=$Mantle                               \
                                 icon.font="sketchybar-app-font:Regular:14.0"     \
                                                                                  \
                                 label.padding_right=10                           \
                                 label.color=$Mantle                              \
                                 script="$PLUGIN_DIR/show_display.sh"           \
           --subscribe display front_app_switched

