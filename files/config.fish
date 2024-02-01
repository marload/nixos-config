fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.local/shared/bin
fish_add_path /Applications/Visual Studio Code.app/Contents/Resources/app/bin/
set -gx EDITOR nvim

# OneDark


# Starship config
starship init fish | source

# Vim binding
fish_vi_key_bindings

# Hammerspoon
if test -d "/Applications/Hammerspoon.app"
    set -q PATH; or set PATH ''; set -gx PATH "/Applications/Hammerspoon.app/Contents/Frameworks/hs" $PATH;
end

# Disable fish greeting
set -g fish_greeting

if test $SHLVL -eq 1
		tmuxinator start work
		tmuxinator start personal
		tmuxinator start config
    tmux attach -t work
end

