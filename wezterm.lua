local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 16.0

config.color_scheme = "Dracula"
config.window_decorations = "RESIZE"
config.enable_tab_bar = false

config.window_background_opacity = 0.8 -- Default opacity when not fullscreen
config.macos_window_background_blur = 8

-- config.background = {
-- 	{
-- 		source = {
-- 			File = wezterm.config_dir .. "/images/sky.jpg",
-- 		},
-- 		opacity = 0.4, -- Adjust the image opacity
-- 	},
-- 	{
-- 		source = {
-- 			Color = "#000000",
-- 		},
-- 		opacity = 0.5, -- Adjust the overlay opacity
-- 	},
-- }
--

config.window_background_gradient = {
	orientation = "Vertical",

	colors = {
		"#223343",
		"#000000",
	},

	interpolation = "Linear",

	blend = "Rgb",
}

config.keys = {
	-- Move between windows
	{
		key = "f",
		mods = "CTRL|CMD",
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
