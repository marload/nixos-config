{ config, pkgs, ... }:

let
  user = "marload";
in
{
  imports = [
    ./home-manager.nix
  ];

  environment = {
    systemPackages = import ./packages.nix { inherit pkgs; };
    shells = with pkgs; [ fish ];
  };

  # Enable fonts dir
  fonts.fontDir.enable = true;

  services.nix-daemon.enable = true;
  
  # Setup user, packages, programs
  nix = {
    package = pkgs.nixUnstable;
    settings.trusted-users = [ "@admin" "${user}" ];

    gc = {
      user = "root";
      automatic = true;
      interval = { Weekday = 0; Hour = 2; Minute = 0; };
      options = "--delete-older-than 30d";
    };

    # Turn this on to make command line easier
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  # Turn off NIX_PATH warnings now that we're using flakes
  system.checks.verifyNixPath = false;

  system = {
    stateVersion = 4;

    defaults = {
      NSGlobalDomain = {
        AppleShowAllExtensions = true;
        ApplePressAndHoldEnabled = false;
        AppleInterfaceStyle = "Dark";
      };

      dock = {
        autohide = true;
        tilesize = 24;
        orientation = "bottom";
      };

      trackpad = {
        Clicking = true;
        TrackpadThreeFingerDrag = true;
      };
    };
  };
}
