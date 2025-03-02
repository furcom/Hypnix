{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {

      decoration = {
        "active_opacity" = "0.96";
        "dim_inactive" = "false";
        "dim_strength" = "0.2";
        "dim_special" = "0.2";
        "dim_around" = "0.2";
        "fullscreen_opacity" = 1;
        "inactive_opacity" = "0.96";
        "rounding" = "16";
        "screen_shader" = "";
        blur = {
          "enabled" = "true";
          "size" = "4";
          "passes" = "2";
          "vibrancy" = "0.1696";
          "vibrancy_darkness" = "0.0";
          "ignore_opacity" = "false";
          "new_optimizations" = "true";
          "xray" = "false";
          "noise" = "0.0117";
          "contrast" = "0.8916";
          "brightness" = "0.8172";
          "special" = "false";
          "popups" = "false";
          "popups_ignorealpha" = "0.2";
        };
        shadow = {
      	  "enabled" = "true";
          "color" = "rgba(0,0,0,0.25)";
          "color_inactive" = "none";
          "ignore_window" = "true";
          "offset" = "2, 2";
          "range" = "16";
          "render_power" = "3";
          "scale" = "1";
      	  "sharp" = "false";
        };
      };

    };
  };
}
