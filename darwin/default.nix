{ nixpkgs, pkgs, ... }:

let
  user = "marload";
in
{
  environment = {
    systemPackages = with pkgs; [
      eza
    ];
  };

  services = {
    nix-daemon = {
      enable = true;
    };
  };
  
  nix = {
    settings = {
      experimental-features = "nix-command flakes";
    };
  };

  programs = {
    zsh = {
      enable = true;
    };
  };

  system = {
    stateVersion = 4;
  };

  nixpkgs.hostPlatform = "aarch64-darwin";
}