-- Startup applications and services
hl.on("hyprland.start", function()
	hl.exec_cmd("hypridle")
	hl.exec_cmd("hyprlock")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")

	hl.exec_cmd("waybar")
	hl.exec_cmd("swaync")
	hl.exec_cmd("awww-daemon")

	hl.exec_cmd("sleep 3 && limine-snapper-restore --notify")
end)
