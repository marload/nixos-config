{ pkgs }:

{
  enable = true;
  package = pkgs.yabai;
  config = {
    # Other configuration options
    layout = "bsp";
    auto_balance = "off";
    split_ratio = "0.50";
    window_border = "on";
    window_border_width = "2";
    window_placement = "second_child";
    focus_follows_mouse = "autoraise";
    mouse_follows_focus = "off";
  };
  extraConfig = ''
        yabai -m rule --add title='Preferences' manage=off layer=above
        yabai -m rule --add title='^(Opening)' manage=off layer=above
        yabai -m rule --add title='Library' manage=off layer=above
        yabai -m rule --add app='^시스템 설정$' manage=off layer=above
        yabai -m rule --add app='Activity Monitor' manage=off layer=above
        yabai -m rule --add app='Finder' manage=off layer=above
        yabai -m rule --add app='^System Information$' manage=off layer=above
        yabai -m rule --add app="^Messages$" manage=off
        yabai -m rule --add app="1Password" manage=off
				yabai -m rule --add app="^Slack$" title="Window Title" border=off

    		yabai -m signal --add event=dock_did_restart action="sudo yabai --load-sa"
        sudo yabai --load-sa
  ''; # Specific rules for what is managed and layered.
}
