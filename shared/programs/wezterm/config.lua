local wezterm = require("wezterm")
return {
	font = wezterm.font("CaskaydiaCove Nerd Font Mono"),
	font_size = 12.0,
	color_scheme = "Catppuccin Mocha",
	enable_tab_bar = false,
	check_for_updates = false,
	warn_about_missing_glyphs = false,
	use_ime = true,
	window_close_confirmation = "NeverPrompt",
}
