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
      sofish = "source ~/.config/fish/config.fish";
    };
    interactiveShellInit = ''
      starship init fish | source
      fish_add_path /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
    '';
  };

  zsh = {
    enable = true;
    autocd = false;
    cdpath = [ "~/.local/share/src" ];
    enableAutosuggestions = true;
    initExtra = ''
      export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/:$PATH"

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

  alacritty = {
    enable = true;
    settings = {
      cursor = {
        style = "Block";
      };

      window = {
        opacity = 1.0;
        padding = {
          x = 24;
          y = 24;
        };
      };

      font = {
        normal = {
          family = "MesloLGS NF";
          style = "Regular";
        };
        size = lib.mkMerge [
          (lib.mkIf pkgs.stdenv.hostPlatform.isLinux 10)
          (lib.mkIf pkgs.stdenv.hostPlatform.isDarwin 14)
        ];
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
  };

  starship = (import ./programs/starship) { inherit pkgs; };
}
