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

      eval "$(starship init zsh)"
      source ${pkgs.zsh-vi-mode}/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh


			if [ $SHLVL -eq 1 ]; then;
      	SESSIONS=("config" "personal" "work")
				for SESSION in ''${SESSIONS[@]}
				do
					tmuxinator start $SESSION
				done
				tmux attach -t config
			fi

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

  carapace = {
    enable = true;
  };

	k9s = {
		enable = true;
    # GruvBox Dark
    skin = {
      k9s = {
        body = {
          fgColor = "white";
          bgColor = "#282828";
          logoColor = "#458588";
        };
        info = {
          fgColor = "#83a598";
          sectionColor = "#b8bb26";
        };
        frame = {
          border = {
            fgColor = "#458588";
            focusColor = "#83a598";
          };
          menu = {
            fgColor = "#ebdbb2";
            keyColor = "#bdae93";
            numKeyColor = "#d3869b";
          };
          crumbs = {
            fgColor = "#ebdbb2";
            bgColor = "#bdae93";
            activeColor = "#458588";
          };
          status = {
            newColor = "#b8bb26";
            modifyColor = "#fabd2f";
            addColor = "#b8bb26";
            errorColor = "#fb4934";
            highlightcolor = "#458588";
            killColor = "#fb4934";
            completedColor = "#928374";
          };
          title = {
            fgColor = "#ebdbb2";
            bgColor = "#282828";
            highlightColor = "#458588";
            counterColor = "#bdae93";
            filterColor = "#928374";
          };
        };
        views = {
          table = {
            fgColor = "#ebdbb2";
            bgColor = "#282828";
            cursorColor = "#458588";
            header = {
              fgColor = "#ebdbb2";
              bgColor = "#282828";
              sorterColor = "#fabd2f";
            };
          };
          yaml = {
            keyColor = "#bdae93";
            colonColor = "#ebdbb2";
            valueColor = "#83a598";
          };
          logs = {
            fgColor = "#ebdbb2";
            bgColor = "#282828";
          };
        };
      };
    };
	};

  starship = (import ./programs/starship) { inherit pkgs; };
	wezterm = (import ./programs/wezterm) { inherit pkgs; };
  alacritty = (import ./programs/alacritty { inherit pkgs; });
}

