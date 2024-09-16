#!/bin/bash

sketchybar          --add item battery right                            \
                    --set battery script="$PLUGIN_DIR/battery.sh"       \
                                  update_freq=120                       \
                                  icon=􀢋                                \
                                  icon.color=$Green                     \
                                  icon.padding_left=5                   \
                                                                        \
                                  label.color=$Green                    \
                                  label.padding_right=5                  \
                                                                        \
                                  background.color=$Surface0            \
                                  background.corner_radius=10           \
                    --subscribe battery system_woke power_source_change
