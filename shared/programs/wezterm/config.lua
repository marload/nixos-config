local wezterm = require("wezterm")
return {
	font = wezterm.font("CaskaydiaCove Nerd Font"),
	font_size = 12.0,
	color_scheme = "Gruvbox Dark (Gogh)",
	enable_tab_bar = false,
	check_for_updates = false,
	warn_about_missing_glyphs = false,
	use_ime = true,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	-- default_prog = { "sh", "/Users/marload/.scripts/spawn.sh" },
}
