#!/bin/bash

WALL_DIR="$HOME/Pictures/Wallpapers"
LOCK_WALL="$HOME/.config/hyprlock/wallpapers/lockscreen.jpg"

# Start awww daemon if not running
if ! pidof awww-daemon >/dev/null; then
    awww-daemon &
    sleep 0.5
fi

SELECTED=$(
    find "$WALL_DIR" -type f | while read -r img; do
        [[ "$img" =~ \.(jpg|jpeg|png|webp|JPG|JPEG|PNG|WEBP)$ ]] || continue

        REL_PATH="${img#$WALL_DIR/}"
        printf "%s\0icon\x1f%s\n" "$REL_PATH" "$img"
    done | rofi \
        -dmenu \
        -i \
        -show-icons \
        -theme ~/.config/rofi/themes/wallpaper.rasi \
        -p "  "
)

if [ -n "$SELECTED" ]; then
    WALLPAPER="$WALL_DIR/$SELECTED"

    # Change desktop wallpaper
    awww img "$WALLPAPER" \
        --transition-type wipe \
        --transition-duration 1

    # Change lock screen wallpaper
    ln -sf "$WALLPAPER" "$LOCK_WALL"

    # Generate wallpaper-based color scheme
    matugen image --source-color-index 0 "$WALLPAPER"

    # Reload Hyprland to apply generated colors
    hyprctl reload
fi