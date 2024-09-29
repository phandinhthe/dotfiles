#!/bin/sh
yabai_focused_display()
{
  echo $(yabai -m query --windows | jq '.[] | select(."has-focus") | .display')
}

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set $NAME  label="Display $(yabai_focused_display $INFO)" \
    icon="$($CONFIG_DIR/plugins/icon_map_fn.sh "Desktop")"
fi
