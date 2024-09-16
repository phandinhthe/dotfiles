#!/bin/bash

sketchybar --add item clock right                              \
           --set clock   update_freq=10                        \
                         script="$PLUGIN_DIR/clock.sh"         \
                         icon=􀉉                                \
                         icon.color=$Peach                     \
                         label.color=$Peach                    \
                                                               \
                         background.color=$Surface0            \
                         background.corner_radius=10           \
                                                               \
                         label.padding_right=5                 \
                         icon.padding_left=5                   \

