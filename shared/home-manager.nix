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
    cdpath = ["~/.local/share/src"];
    shellAliases = {
      tf = "terraform";
      k = "kubectl";
			ls = "eza";
    };
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
      init.defaultBranch = "main";
      core = {
        editor = "nvim";
      };
    };
  };

  ssh = {
    enable = true;
  };

  tmux = {
    enable = true;
  };
}
