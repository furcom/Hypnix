{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      plugin = {

        scroller = {
          "column_widths" = "onethird onehalf twothirds seveneighths one";
          "window_heights" = "onethird onehalf twothirds seveneighths one";
          "column_default_width" = "seveneighths";
          "window_default_height" = "one";
          "focus_wrap" = true;
          "focus_edge_ms" = 400;
          "cyclesize_wrap" = true;
          "cyclesize_closest" = true;
          "center_row_if_space_available" = true;
          "center_active_column" = false;
          "center_active_window" = true; # CENTER
          "overview_scale_content" = true;
          "col.selection_border" = "$color2";
          "jump_labels_font" = "0xProto Nerd Font Mono";
          "jump_labels_color" = "$color2";
          "jump_labels_scale" = "0.33";
          "jump_labels_keys" = "1234";
          "gesture_scroll_enable" = true;
          "gesture_scroll_fingers" = 3;
          "gesture_scroll_distance" = 50;
          "gesture_overview_enable" = true;
          "gesture_overview_fingers" = 4;
          "gesture_overview_distance" = 3;
          "gesture_workspace_switch_enable" = false;
          "gesture_workspace_switch_fingers" = 5;
          "gesture_workspace_switch_distance" = 5;
          "gesture_workspace_switch_prefix" = "";
        };

        hyprbars = {
          "bar_height" = "32";
          "bar_color" = "rgba(00000099)";
          "col.text" = "rgb(ffffff)";
          "bar_title_enabled" = "true";
          "bar_text_size" = "12";
          "bar_text_font" = "0xProto Nerd Font Mono";
          "bar_text_align" = "center";
          "bar_buttons_alignment" = "right";
          "bar_part_of_window" = "false";
          "bar_precedence_over_border" = "false";
          "bar_padding" = "16";
          "bar_button_padding" = "16";
          # hyprbars-button = color, size, icon, on-click
          "hyprbars-button" = [
            "rgb(ff0000), 16, 󰖭, hyprctl dispatch killactive"
            "$background, 16, , hyprctl dispatch fullscreen 1"
            "$background, 20, 󰜴, hyprctl dispatch movetoworkspace +1"
            "$background, 20, 󰜱, hyprctl dispatch movetoworkspace -1"
          ];
        };

        dynamic-cursors = {
          "enabled" = "true";
          "mode" = "tilt";
          "threshold" = "1";
          "rotate" = {
            "length" = "20";
            "offset" = "0.0";
          };
          "tilt" = {
            "limit" = "3000";
            "function" = "quadratic";
          };
          "stretch" = {
            "function" = "quadratic";
            "limit" = "3000";
          };
          "shake" = {
            "base" = "1.0";
            "enabled" = "true";
            "effects" = "true";
            "influence" = "0.0";
            "ipc" = "false";
            "limit" = "5.0";
            "nearest" = "false";
            "speed" = "20.0";
            "threshold" = "4.0";
            "timeout" = "250";
          };
          "hyprcursor" = {
            "enabled" = "true";
            "fallback" = "clientside";
            "nearest" = "false";
            "resolution" = "-1";
          };
        };

      };
    };
  };
}
