#!/bin/sh
sketchybar --add item media center \
           --set media label.color=$Mauve \
                       label.max_chars=20 \
                       scroll_texts=on \
                       icon.color=$Mauve   \
                       icon.padding_left=10 \
                       label.padding_right=10 \
                       background.drawing=off \
                       background.border_color=$Mauve \
                       background.color=$Base \
                       background.border_width=1 \
                       background.corner_radius=10 \
                                                    \
                       script="$PLUGIN_DIR/media.sh" \
            --subscribe media media_change
