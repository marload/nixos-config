{ pkgs }:
{
	enable = true;

	settings = {
		shell.program = "${pkgs.fish}/bin/fish";
		env = {
			TERM = "xterm-256color";
		};
		font = {
			normal = {
				family = "FiraCode Nerd Font";
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
			dynamic_padding = true;
			class = {
				instance = "Alacritty";
				general = "Alacritty";
			};
		};
		colors = {
			primary = {
				background = "#24283b";
				foreground = "#a9b1d6";
				dim_foreground = "#32344a";
			};

			normal = {
				black   = "#32344a";
				red     = "#f7768e";
				green   = "#9ece6a";
				yellow  = "#e0af68";
				blue    = "#7aa2f7";
				magenta = "#ad8ee6";
				cyan    = "#449dab";
				white   = "#9699a8";
			};

			bright = {
				black   = "#444b6a";
				red     = "#ff7a93";
				green   = "#b9f27c";
				yellow  = "#ff9e64";
				blue    = "#7da6ff";
				magenta = "#bb9af7";
				cyan    = "#0db9d7";
				white   = "#acb0d0";
			};

		};
	};
}
