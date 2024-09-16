#!/bin/bash


##### Bar Appearance #####
# Configuring the general appearance of the bar, these are only some of the
# options available. For all options see:
# https://felixkratz.github.io/SketchyBar/config/bar
# If you are looking for other colors, see the color picker:
# https://felixkratz.github.io/SketchyBar/config/tricks#color-picker
bar=(
    height=24
    blur_radius=30
    position=top
    sticky=off
    padding_left=10
    padding_right=5
    color=$Crust
)
sketchybar --bar "${bar[@]}"



