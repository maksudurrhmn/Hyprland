source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

function matugen-wallpaper
    matugen image --source-color-index 0 $argv[1]
end
