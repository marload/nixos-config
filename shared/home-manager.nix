{ config, pkgs, lib, ... }:

let
  name = "Wansoo Kim";
  user = "marload";
  email = "rladhkstn8@gmail.com";
in
{
  fish = {
    enable = true;
    shellAliases = {
      tf = "terraform";
      k = "kubectl";
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

  zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  ssh = {
    enable = true;
  };

  tmux = {
    enable = true;
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
}
