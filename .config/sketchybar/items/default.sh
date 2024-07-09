#!/bin/bash
##### Changing Defaults ##### We now change some default values that are applied to all further items
# For a full list of all available item properties see:
# https://felixkratz.github.io/SketchyBar/config/items
default=(

    #icon.font="SF Pro:Semibold:14.0"  
    #icon.color=0xffeed49f
    label.font="SF Pro:Bold:13.0" 
    padding_left=5
    padding_right=5
    label.padding_left=5
    label.padding_right=5
)
sketchybar --default "${default[@]}"


