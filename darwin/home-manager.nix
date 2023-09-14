{ config, pkgs, lib, ... }:

let
  user = "marload";
in
{
  imports = [
    <home-manager/nix-darwin>
  ];

  users.users.${user} = {
    name = "${user}";
    home = "/Users/${user}";
    isHidden = false;
    shell = pkgs.zsh;
  };

  homebrew.enable = true;
  homebrew.casks = pkgs.callPackage ./casks.nix {};
  homebrew.masApps = {
    "1password" = 1333542190;
    "yoink" = 457622435;
    "kakaotalk" = 869223134;
  };

  home-manager = {
    useGlobalPkgs = true;
    users.${user} = { pkgs, config, lib, ... }:{
      home.enableNixpkgsReleaseCheck = false;
      home.packages = pkgs.callPackage ./packages.nix {};
      programs = {} // import ../shared/home-manager.nix { inherit config pkgs lib; };
    }
  }
}
