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
    shell = pkgs.zsh;
  };

  homebrew = {
    enable = true;
    casks = pkgs.callPackage ./casks.nix {};
    brews = [
      "tfenv"
    ];
    masApps = {
      "yoink" = 457622435;
      "kakaotalk" = 869223134;
    };
  };

  home-manager = {
    useGlobalPkgs = true;
    users.${user} = { pkgs, config, lib, ... }:{
      home.enableNixpkgsReleaseCheck = false;
      home.packages = pkgs.callPackage ../shared/packages.nix {};
      programs = {} // import ../shared/home-manager.nix { inherit config pkgs lib; };
      home.stateVersion = "21.11";
    };
  };

  local.dock.enable = true;
  local.dock.entries = [
    { path = "/Applications/WezTerm.app"; }
    { path = "/Applications/Arc.app"; }
    { path = "/Applications/Obsidian.app"; }
    { path = "/Applications/KakaoTalk.app"; }
    { path = "/System/Applications/Music.app/"; }
    { path = "/Applications/Visual Studio Code.app"; }
    {
      path = "${config.users.users.${user}.home}/.local/share/";
      section = "others";
      options = "--sort name --view grid --display folder";
    }
    {
      path = "${config.users.users.${user}.home}/Downloads";
      section = "others";
      options = "--sort name --view grid --display stack";
    }
  ];

}
