local wezterm = require("wezterm")
return {
	font = wezterm.font {
		family = "CaskaydiaCove Nerd Font",
		harfbuzz_features = {"calt=0", "clig=0", "liga=0"},
	},
	font_size = 12.0,
	color_scheme = "nord",
	enable_tab_bar = false,
	check_for_updates = false,
	warn_about_missing_glyphs = false,
	use_ime = true,
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt"
}
