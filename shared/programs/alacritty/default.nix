{ pkgs }:
{
	enable = true;

	settings = {
		shell = {
			program = "${pkgs.tmux}/bin/tmux";
			args = [ "new-session" "-A" "-s" "main"];
		};
		font = {
			normal = {
				family = "FiraCode Nerd Font Mono";
				style = "Regular";
			};
			size = 12;
		};
		window = {
			opacity = 1.0;
			padding = {
				x = 6;
				y = 7;
			};
			decorations = "none";
		};
		dynamic_padding = true;
		title = "Terminal";
		class = {
			instance = "Alacritty";
			general = "Alacritty";
		};
		# color scheme catpucchin
		colors = {
			primary = {
				background = "#1d1f21";
				foreground = "#c5c8c6";
			};
			normal = {
				black = "#1d1f21";
				red = "#cc6666";
				green = "#b5bd68";
				yellow = "#f0c674";
				blue = "#81a2be";
				magenta = "#b294bb";
				cyan = "#8abeb7";
				white = "#c5c8c6";
			};
			bright = {
				black = "#969896";
				red = "#cc6666";
				green = "#b5bd68";
				yellow = "#f0c674";
				blue = "#81a2be";
				magenta = "#b294bb";
				cyan = "#8abeb7";
				white = "#ffffff";
			};
		};
	};
}
