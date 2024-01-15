{ pkgs }:

{
  enable = true;
  package = pkgs.skhd;
  skhdConfig = ''
    # Toggle Window
    lalt - t : yabai -m window --toggle float && yabai -m window --grid 4:4:1:1:2:2
    lalt - f : yabai -m window --toggle zoom-fullscreen
    lalt - q : yabai -m window --close

    # Focus Window
    lalt - k: yabai -m window --focus north
    lalt - j: yabai -m window --focus south
    lalt - h: yabai -m window --focus west
    lalt - l: yabai -m window --focus east

    # Swap Window
    shift + lalt - k : yabai -m window --swap north
    shift + lalt - j : yabai -m window --swap south
    shift + lalt - h : yabai -m window --swap west
    shift + lalt - l : yabai -m window --swap east

    # Resize Window
    shift + cmd - k : yabai -m window --resize left:-50:0 && yabai -m window --resize right:-50:0
    shift + cmd - j : yabai -m window --resize left:50:0 && yabai -m window --resize right:50:0
    shift + cmd - h : yabai -m window --resize up:-50:0 && yabai -m window --resize down:-50:0
    shift + cmd - l : yabai -m window --resize up:-50:0 && yabai -m window --resize down:-50:0

    # Send to Space
    shift + ctrl - 1 : yabai -m window --space 1
    shift + ctrl - 2 : yabai -m window --space 2
    shift + ctrl - 3 : yabai -m window --space 3
    shift + ctrl - 4 : yabai -m window --space 4
    shift + ctrl - 5 : yabai -m window --space 5
  '';
}
