{ config, pkgs, lib, ... }:

let
  user = "marload";
in
{
  imports = [
    <home-manager/nix-darwin>
    ./dock
  ];

  users.users.${user} = {
    name = "${user}";
    home = "/Users/${user}";
    isHidden = false;
    shell = pkgs.fish;
  };

  services = {
    skhd = import ./service/skhd.nix { inherit pkgs; };
    yabai = import ./service/yabai.nix { inherit pkgs; };
  };

  system = {
    keyboard = {
      enableKeyMapping = true;
    };
    defaults = {
      dock = {
        mru-spaces = false;
      };
    };
  };

  homebrew = {
    enable = true;
    casks = pkgs.callPackage ./casks.nix { };
    brews = pkgs.callPackage ./packages.nix { };
    masApps = {
      "kakaotalk" = 869223134;
      "todoist" = 585829637;
    };
  };

  home-manager = {
    useGlobalPkgs = true;
    users.${user} = { pkgs, config, lib, ... }: {
      home.enableNixpkgsReleaseCheck = false;
      home.packages = pkgs.callPackage ../shared/packages.nix { };
      programs = { } // import ../shared/home-manager.nix { inherit config pkgs lib; };
      home.stateVersion = "24.05";
	    manual.manpages.enable = false;
    };
  };

  local.dock.enable = true;
  local.dock.entries = [
    { path = "/Applications/Arc.app"; }
    { path = "/System/Applications/Music.app/"; }
    {
      path = "${config.users.users.${user}.home}/Downloads";
      section = "others";
    }
  ];

}
