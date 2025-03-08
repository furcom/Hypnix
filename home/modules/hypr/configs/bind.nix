{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {

      "$dispatch" = "hyprctl dispatch";

      bindm = [
        # Move/resize windows with mainMod + LMB/RMB and dragging
        "$mainMod, mouse:272, movewindow"
      ];

      bind = [
        # Programs
        "$mainMod, B, exec, hyprctl dispatch togglespecialworkspace && bitwarden --ozone-platform=wayland"
        "$mainMod, E, exec, $filemanager"
        "$mainMod, G, exec, $webbrowser --ozone-platform=wayland"
        "$mainMod, T, exec, $terminal"
        "$mainMod, RETURN, exec, $terminal"
        "$mainMod SHIFT, G, exec, $webbrowser --ozone-platform=wayland --incognito"

        # Menus
        "$mainMod, I, exec, ~/.config/hypr/scripts/settings --menu"
        "$mainMod, R, exec, rofi -show drun -modi drun -theme-str 'window{width:30%;height:35%;}'"
        "$mainMod, S, exec, rofi -show ssh -theme-str 'window{width:20%;height:35%;} configuration{show-icons:false;}'"
        "$mainMod, V, exec, cliphist list | rofi -dmenu -theme-str 'window{width:50%;height:35%;} configuration{show-icons:false;}' | cliphist decode | wl-copy"
        "$mainMod, W, exec, waypaper"
        "$mainMod, DELETE, exec, wlogout"
        "$mainMod, ESCAPE, exec, ~/.config/hypr/scripts/settings --menu"
        "$mainMod, PERIOD, exec, smile"
        "$mainMod SHIFT, C, exec, hyprpicker -a"
        "$mainMod SHIFT, W, exec, waypaper --random"

        # Etc.
        "$mainMod, L, exec, $lockscreen"
        "$mainMod CTRL, PRINT, exec, hyprshot -m region"
        "$mainMod SHIFT, PRINT, exec, hyprshot -m window"
        "$mainMod, PRINT, exec, hyprshot -m output --m eDP-1"

        # Hardware
        "$mainMod, F1, exec, ~/.config/hypr/scripts/audio_out --toggle"
        "$mainMod, F2, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-"
        "$mainMod, F3, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
        "$mainMod, F4, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        "$mainMod, F5, exec, brightnessctl s 10%-"
        "$mainMod, F6, exec, brightnessctl s 10%+"
        "$mainMod SHIFT, F5, exec, brightnessctl -d 'tpacpi::kbd_backlight' set 50%-"
        "$mainMod SHIFT, F6, exec, brightnessctl -d 'tpacpi::kbd_backlight' set 50%+"

        # Special Workspace
        "$mainMod, space, togglespecialworkspace"

        # Windows
        "ALT, F4, killactive"
        "$mainMod, Q, killactive"

        "$mainMod, TAB, scroller:jump"
        "$mainMod, C, centerwindow, active"
        "$mainMod, F, togglefloating"
        "$mainMod, F, centerwindow"

        # Floating
        "$mainMod, mouse:273, fullscreen, 1"
        "$mainMod, mouse:274, centerwindow, active"

        # Move focus
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"
        "$mainMod, mouse_down, movefocus, r"
        "$mainMod, mouse_up, movefocus, l"
        "$mainMod SHIFT, mouse_down, movefocus, d"
        "$mainMod SHIFT, mouse_up, movefocus, u"

        # Move Window
        "$mainMod SHIFT, left, movewindow, l"
        "$mainMod SHIFT, right, movewindow, r"
        "$mainMod SHIFT, up, movewindow, u"
        "$mainMod SHIFT, down, movewindow, d"

        # Fullscreen (Don't change order of "alignwindow"!)
        "$mainMod, plus, fullscreen, 1"
        "$mainMod SHIFT, plus, fullscreen, 0"

        # Cycle Window Size
        "$mainMod, page_up, scroller:cyclewidth, n"

        "$mainMod, page_down, scroller:cyclewidth, p"

        # Set Window Width
        "$mainMod, 1, scroller:setwidth, 0"
        "$mainMod, 2, scroller:setwidth, 1"
        "$mainMod, 3, scroller:setwidth, 2"
        "$mainMod, 4, scroller:setwidth, 3"
        "$mainMod, 5, scroller:setwidth, 4"

        # Set Window Height
        "$mainMod SHIFT, 1, scroller:setheight, 0"
        "$mainMod SHIFT, 2, scroller:setheight, 1"
        "$mainMod SHIFT, 3, scroller:setheight, 2"
        "$mainMod SHIFT, 4, scroller:setheight, 3"
        "$mainMod SHIFT, 5, scroller:setheight, 4"
      ];
      
    };
  };
}
