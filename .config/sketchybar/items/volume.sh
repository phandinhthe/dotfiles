#!/bin/bash


 sketchybar           --add item volume right                             \
                      --set volume  script="$PLUGIN_DIR/volume.sh"        \
                            label.color=$Flamingo                         \
                            label.padding_right=5                         \
                                                                          \
                            icon.color=$Flamingo                          \
                            icon.padding_left=5                           \
                                                                          \
                            background.color=$Surface0                    \
                            background.corner_radius=10                   \
                                                                          \
                      --subscribe volume volume_change                    \

