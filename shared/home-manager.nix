{ config, pkgs, lib, ... }:

let
  name = "Wansoo Kim";
  user = "marload";
  email = "rladhkstn8@gmail.com";
in
{
  zsh = {
    enable = true;
    autocd = false;
    cdpath = [ "~/.local/share/src" ];
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    initExtra = ''
      export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/:$PATH"
      export PATH=/opt/homebrew/bin:$PATH
      export PATH=$HOME/.local/share/bin:$PATH
      export EDITOR=nvim

      # Git Alias
      alias g="git"
      alias gs="git status"
      alias ga="git add"
      alias gc="git commit"
      alias gca="git commit --amend"
      alias gcm="git commit -m"
      alias gco="git checkout"
      alias gcb="git checkout -b"
      alias gd="git diff"
      alias gds="git diff --staged"
      alias gl="git log"
      alias gp="git push"
      alias gpl="git pull"

      alias vi="nvim"
      alias vim="nvim"
      alias tf="terraform"
      alias k="kubectl"
      alias diff="difft"

			alias lzd="lazydocker"

      eval "$(starship init zsh)"
    '';
  };

  git = {
    enable = true;
    ignores = ["*.swp"];
    userName = name;
    userEmail = email;
    lfs = {
      enable = true;
    };
    extraConfig = {
      push.autoSetupRemote = true;
      init.defaultBranch = "main";
      core.editor = "nvim";
      gpg.format = "ssh";
      gpg.ssh.program = "/Applications/1Password.app/Contents/MacOS/op-ssh-sign";
      commit.gpgsign = true;
      user.signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFiq+tWPw1BFb20P6WLLvx6meyPLnFDKI7Jvan8fD+py";
    };
  };

  zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  ssh = {
    enable = true;
		extraConfig = ''
			Host *
				IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
		'';
  };

  direnv = {
    enable = true;
    nix-direnv = {
      enable = true;
    };
  };

  lsd = {
    enable = true;
    enableAliases = true;
  };

  zellij = (import ./programs/zellij) { inherit pkgs; };
  wezterm = (import ./programs/wezterm) { inherit pkgs; };
  starship = (import ./programs/starship) { inherit pkgs; };
}
