{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      windowrulev2 = [
        "bordercolor $color4 0deg, fullscreen:1"
        "bordersize 5, fullscreen:1"
        "opacity 0.95, floating:1"

        "float, class:(it.mijorus.smile)"
        "size 20% 26%, class:(it.mijorus.smile)"
        "center, class:(it.mijorus.smile)"
        "animation slide bottom, class:(it.mijorus.smile)"

        "float, class:(waypaper)"
        "center, class:(waypaper)"
        "size 45% 65%, class:(waypaper)"
        "animation slide bottom, class:(waypaper)"

        "plugin:scroller:columnwidth onehalf, class:(Bitwarden)"
        "animation slide bottom, class:(Bitwarden)"

        "plugin:scroller:columnwidth seveneighths, class:(google-chrome)"
        "plugin:scroller:columnwidth twothirds, class:(kitty)"
        "plugin:scroller:columnwidth twothirds, class:(Spotify)"
        "plugin:scroller:columnwidth onehalf, class:(nemo)"
      ];
      # Check layers with "hyprctl layers"
      layerrule = [
        "animation slide top, bar-0"
        "animation fade, hyprpaper"
        "animation fade, logout_dialog"
        "animation slide right, audiomenu"
        "animation slide right, bluetoothmenu"
        "animation popin 95%, calendarmenu"
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
