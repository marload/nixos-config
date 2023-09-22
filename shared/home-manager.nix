{ pkgs, lib, config }:

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
    shellAliases = {
      # Alias git
      g = "git";
      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gcm = "git commit -m";
      gp = "git push";
      gpl = "git pull";
      gco = "git checkout";
      gcb = "git checkout -b";

      # Alias nvim
      v = "nvim";
      vi = "nvim";
      vim = "nvim";

      # ETC
      tf = "terraform";
      k = "kubectl";
      kd = "kdash";
      lzd = "lazydocker";
      clr = "clear";
      rebuild = "~/.config/nixos-config/bin/rebuild.sh";
    };
    initExtra = ''
      export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/:$PATH"
      export PATH=/opt/homebrew/bin:$PATH
      export PATH=$HOME/.local/share/bin:$PATH
      export EDITOR=nvim

      set -o vi
      bindkey -M viins jk vi-cmd-mode
      eval "$(starship init zsh)"
    '';
  };

  git = {
    enable = true;
    ignores = [ "*.swp" ];
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
  alacritty = (import ./programs/alacritty) { inherit pkgs; lib; };
}
