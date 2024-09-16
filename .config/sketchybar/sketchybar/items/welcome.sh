#!/bin/bash

WELCOME="Hello $USER, Have a nice day."
sketchybar           --add item thephan right                                 \
                      --set thephan label.color=$Green                        \
                                    label="$WELCOME"                          \
                                    label.color=$Yellow                       \
                                    label.padding_right=10                    \
                                    scroll_texts=on                           \
                                    label.max_chars=20                        \
                                    icon.padding_left=10                      \
                                    background.color=$Surface0                \
                                    icon=􀣺                                    \
                                    icon.color=$Yellow                        \
                                    background.corner_radius=10

