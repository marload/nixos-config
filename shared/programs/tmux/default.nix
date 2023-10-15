{ pkgs }:

{
	enable = false;
	clock24 = true;

	shell = "${pkgs.zsh}/bin/zsh";
	sensibleOnTop = false;

	extraConfig = ''
		set -g base-index 1
		set-option -g default-terminal "screen-256color"
		set-option -sa terminal-features ',XXX:RGB'

    set -g @plugin 'tmux-plugins/tpm'
		set -g @plugin 'tmux-plugins/tmux-sensible'
		set -g @plugin 'catppuccin/tmux'
		set -g @catppuccin_flavour 'mocha'
		set -g @catppuccin_window_tabs_enabled on
	'';	
}
