{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      windowrulev2 = [
        "bordercolor $color3 0deg, fullscreen:1"
        "bordersize 6, fullscreen:1"

        "float, initialClass:it.mijorus.smile"
        "size 19% 25%, initialClass:it.mijorus.smile"
        "move 1526 814, initialClass:it.mijorus.smile"
        "animation slide bottom, initialClass:it.mijorus.smile"

        "float, initialClass:Bitwarden"
        "size 910 1041, initialClass:Bitwarden"
        "move 945 114, initialClass:Bitwarden"
        "animation slide right, initialClass:Bitwarden"

        "float, initialClass:nemo"
        "size 50% 55%, initialClass:nemo"
        "center, initialClass:nemo"
        "animation popin 85%, initialClass:nemo"

        "float, initialClass:waypaper"
        "size 43% 62%, initialClass:waypaper"
        "center, initialClass:waypaper"
        "animation slide bottom, initialClass:waypaper"

        "float, initialClass:nwg-look"
        "size 43% 62%, initialClass:nwg-look"
        "center, initialClass:nwg-look"
        "animation slide bottom, initialClass:nwg-look"
      ];
      # Check layers with "hyprctl layers"
      layerrule = [
        "animation slide top, bar-0"
        "animation fade, hyprpaper"
        "animation fade, logout_dialog"
        "animation slide right, audiomenu"
        "animation slide right, bluetoothmenu"
        "animation slide left, calendarmenu"
        "animation slide left, dashboardmenu"
        "animation slide right, energymenu"
        "animation slide right, indicator"
        "animation slide right, mediamenu"
        "animation slide right, networkmenu"
        "animation slide right, notificationsmenu"
        "animation slide right, notifications-window"
        "animation slide right, powerdropdownmenu"
        "animation fade, verification"
      ];
    };
  };
}
