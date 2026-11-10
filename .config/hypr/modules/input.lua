-- Keyboard, mouse, and touchpad settings
hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,
		sensitivity = 0,

		touchpad = {
			natural_scroll = false,
		},
	},
})

-- Three-finger horizontal workspace switching
hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

-- Mouse-specific settings
hl.device({
	name = "usb-optical-mouse-",
	sensitivity = -0.5,
})
