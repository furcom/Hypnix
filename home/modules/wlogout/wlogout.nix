{ pkgs, ... }:
{
  home.file = {
    ".config/wlogout/img" = { source = ./img; recursive = true; };
  };

  programs.wlogout = {
    enable = true;
    package = pkgs.wlogout;
    layout = [
      {
        label  = "lock";
        action = "hyprlock";
        text = "Lock";
        keybind = "l";
      }
      {
        label = "hibernate";
        action = "systemctl hibernate";
        text = "Hibernate";
        keybind = "h";
      }
      {
        label = "logout";
        action = "hyprctl dispatch exit";
        text = "Logout";
        keybind = "d";
      }
      {
        label = "poweroff";
        action = "systemctl poweroff";
        text = "Poweroff";
        keybind = "p";
      }
      {
        label = "suspend";
        action = "systemctl suspend";
        text = "Suspend";
        keybind = "s";
      }
      {
        label = "reboot";
        action = "systemctl reboot";
        text = "Reboot";
        keybind = "r";
      }
    ];
  };
}
