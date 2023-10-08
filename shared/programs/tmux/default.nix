{ pkgs }:

{
	enable = true;
	terminal = "tmux-256color";
	keyMode = "vi";
  historyLimit = 50000;
	plugins = with pkgs.tmuxPlugins; [
		vim-tmux-navigator
		sensible
		yank
		prefix-highlight
	];
	extraConfig = ''
	  set -sg escape-time 10 # makes vim esc usable
    new-session -s main
		set-option -g default-terminal "tmux-256color"
		set -g @plugin 'catppuccin/tmux'
		set -g @plugin 'tmux-plugins/tpm'
		set -g @catppuccin_flavour 'mocha'
	'';
}
