{ pkgs }:

{
	enable = true;
	terminal = "tmux-256color";
	keyMode = "vi";
  historyLimit = 50000;	
	plugins = with pkgs.tmuxPlugins; [
		catppuccin
	];
	extraConfig = ''
	  set -sg escape-time 0 # makes vim esc usable
    new-session -s main
		set-option -g default-terminal "tmux-256color"
		set -g @plugin 'catppuccin/tmux'
		set -g @plugin 'tmux-plugins/tpm'
		set -g @catppuccin_flavour 'mocha'
	'';
}
