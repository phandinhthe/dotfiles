#!/bin/sh
sketchybar --add item display   center                                              \
           --set display        background.color=$Mantle                           \
                                background.padding_right=10                       \
                                background.corner_radius=10                       \
                                                                                  \
                                icon.padding_left=20                             \
                                icon.padding_right=5                             \
                                icon.color=$Maroon                               \
                                icon.font="sketchybar-app-font:regular:16.0"     \
                                                                                  \
                                background.drawing=off \
                                background.border_color=$Maroon \
                                background.color=$Mantle \
                                background.border_width=1 \
                                background.corner_radius=10 \
                                                                                  \
                                label.padding_right=20                           \
                                label.color=$Maroon                              \
                                label.font="sketchybar-app-font:bold:16.0"       \
                                script="$PLUGIN_DIR/show_display.sh"           \
           --subscribe display front_app_switched

