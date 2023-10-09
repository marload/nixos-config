{ pkgs }:

{
	enable = true;
	clock24 = true;
	keyMode = "vi";

	extraConfig = ''
		set -g base-index 1
		set-option -g default-terminal "screen-256color"
		set-option -sa terminal-features ',XXX:RGB'
	'';

	plugins = with pkgs.tmuxPlugins; [
		vim-tmux-navigator
		{
			plugin = catppuccin;
			extraConfig = ''
				set -g @catppuccin_window_tabs_enabled on
				set -g @catppuccin_flavour 'mocha'
			'';
		}
	];
}
