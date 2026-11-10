-- Requires
require("modules.monitor")
require("modules.autostart")
require("modules.keybinds")
require("modules.input")
require("modules.env")
require("modules.misc")
require("modules.windowrules")
require("modules.decoration")

-- Layouts
hl.config({
	dwindle = {
		preserve_split = true,
	},

	master = {
		new_status = "master",
	},

	scrolling = {
		fullscreen_on_one_column = true,
	},
})
