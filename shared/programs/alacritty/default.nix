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
			background = "#282c34";
			foreground = "#abb2bf";
			dim_foreground = "#5c6370";
		};

		normal = {
			black   = "#282c34";
			red     = "#e06c75";
			green   = "#98c379";
			yellow  = "#e5c07b";
			blue    = "#61afef";
			magenta = "#c678dd";
			cyan    = "#56b6c2";
			white   = "#abb2bf";
		};

		bright = {
			black   = "#5c6370";
			red     = "#e06c75";
			green   = "#98c379";
			yellow  = "#e5c07b";
			blue    = "#61afef";
			magenta = "#c678dd";
			cyan    = "#56b6c2";
			white   = "#abb2bf";
		};
	};
	};
}
