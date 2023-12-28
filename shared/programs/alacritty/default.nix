{ pkgs }:
{
	enable = true;

	settings = {
		shell.program = "${pkgs.zsh}/bin/zsh";
		font = {
			normal = {
				family = "CaskaydiaCove Nerd Font";
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
			decorations = "Buttonless";
		};
		dynamic_padding = true;
		title = "Terminal";
		class = {
			instance = "Alacritty";
			general = "Alacritty";
		};
		colors = {
			primary = {
				background = "#282828"; 
				foreground = "#ebdbb2";
			};
			normal = {
				black = "#282828";
				red = "#cc241d";
				green = "#98971a";
				yellow = "#d79921";
				blue = "#458588";
				magenta = "#b16286";
				cyan = "#689d6a";
				white = "#a89984";
			};
			bright = {
				black = "#928374";
				red = "#fb4934";
				green = "#b8bb26";
				yellow = "#fabd2f";
				blue = "#83a598";
				magenta = "#d3869b";
				cyan = "#8ec07c";
				white = "#ebdbb2";
			};
		};
	};
}
