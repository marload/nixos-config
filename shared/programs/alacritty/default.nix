{ pkgs }:
{
	enable = true;
	settings = {
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
		};
		dynamic_padding = true;
		decorations = "full";
		title = "Terminal";
		class = {
			instance = "Alacritty";
			general = "Alacritty";
		};

		colors = {
			primary = {
				background = "0x1f2528";
				foreground = "0xc0c5ce";
			};

			normal = {
				black = "0x1f2528";
				red = "0xec5f67";
				green = "0x99c794";
				yellow = "0xfac863";
				blue = "0x6699cc";
				magenta = "0xc594c5";
				cyan = "0x5fb3b3";
				white = "0xc0c5ce";
			};

			bright = {
				black = "0x65737e";
				red = "0xec5f67";
				green = "0x99c794";
				yellow = "0xfac863";
				blue = "0x6699cc";
				magenta = "0xc594c5";
				cyan = "0x5fb3b3";
				white = "0xd8dee9";
			};
		};
	};
}
