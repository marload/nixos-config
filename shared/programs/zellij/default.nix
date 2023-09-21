{ pkgs }:
let
  package = pkgs.zellij;
in
{
  enable = true;
  enableZshIntegration = true;
  inherit package;
  settings = {
    theme = "catppuccin-mocha";
  };
}
