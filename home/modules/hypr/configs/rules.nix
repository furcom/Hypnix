{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      windowrulev2 = [
        "bordercolor $color4, fullscreen:1"
        "bordersize 4, fullscreen:1"
        "opacity 0.95, floating:1"
        "plugin:scroller:alignwindow m, class:(.+)"
        "plugin:scroller:alignwindow c, class:(.+)"

        "float, class:(it.mijorus.smile)"
        "size 20% 26%, class:(it.mijorus.smile)"
        "center, class:(it.mijorus.smile)"
        "animation slide bottom, class:(it.mijorus.smile)"

        "float, class:(waypaper)"
        "center, class:(waypaper)"
        "size 45% 65%, class:(waypaper)"
        "animation slide bottom, class:(waypaper)"

        "animation slide bottom, class:(discord)"
        "plugin:scroller:columnwidth twothirds, class:(discord)"
        "workspace special, class:(discord)"

        "plugin:scroller:columnwidth one, class:(virt-viewer)"
        "fullscreen, class:(virt-viewer)"

        "animation slide bottom, class:(Bitwarden)"
        "plugin:scroller:columnwidth onehalf, class:(Bitwarden)"
        "workspace special, class:(Bitwarden)"

        "animation slide bottom, class:(Spotify)"
        "plugin:scroller:columnwidth onehalf, class:(Spotify)"
        "workspace special, class:(Spotify)"

        "plugin:scroller:columnwidth one, class:(google-chrome)"
        "plugin:scroller:windowheight one, class:(google-chrome)"

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
        "animation slide left, calendarmenu"
        "animation slide left, dashboardmenu"
        "animation slide right, energymenu"
        "animation slide right, indicator"
        "animation slide left, mediamenu"
        "animation slide right, networkmenu"
        "animation slide right, notificationsmenu"
        "animation slide bottom, notifications-window"
        "animation slide right, powerdropdownmenu"
        "animation slide bottom, rofi"
        "animation fade, verification"
      ];
    };
  };
}
