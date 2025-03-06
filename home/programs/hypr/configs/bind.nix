{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {

      bindm = [
        # Move/resize windows with mainMod + LMB/RMB and dragging
        "$mainMod, mouse:272, movewindow"
      ];

      bind = [
        # Programs
        "$mainMod, B, exec, bitwarden"
        "$mainMod, E, exec, $filemanager"
        "$mainMod, G, exec, $webbrowser"
        "$mainMod, T, exec, $terminal"
        "$mainMod, RETURN, exec, $terminal"
        "$mainMod SHIFT, G, exec, $webbrowser --ozone-platform=wayland --incognito"

        # Menus
        "$mainMod, I, exec, ~/.config/hypr/scripts/settings --menu"
        "$mainMod, R, exec, rofi -show drun -modi drun"
        "$mainMod, S, exec, rofi -show ssh"
        "$mainMod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"
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

        # Windows
        "ALT, F4, killactive"
        "ALT, F4, scroller:alignwindow, m"
        "ALT, F4, scroller:alignwindow, c"

        "$mainMod, Q, killactive"
        "$mainMod, Q, scroller:alignwindow, m"
        "$mainMod, Q, scroller:alignwindow, c"

        "$mainMod, TAB, scroller:jump"
        "$mainMod, C, centerwindow, active"
        "$mainMod, F, togglefloating"
        "$mainMod, F, centerwindow"

        # Floating
        "$mainMod, mouse:273, togglefloating, active"
        "$mainMod, mouse:274, centerwindow, active"

        # Move focus
        "$mainMod, left, movefocus, l"
        "$mainMod, left, scroller:alignwindow, m"
        "$mainMod, left, scroller:alignwindow, c"

        "$mainMod, right, movefocus, r"
        "$mainMod, right, scroller:alignwindow, m"
        "$mainMod, right, scroller:alignwindow, c"

        # Move Window
        "$mainMod SHIFT, left, movewindow, l"
        "$mainMod SHIFT, left, scroller:alignwindow, m"
        "$mainMod SHIFT, left, scroller:alignwindow, c"

        "$mainMod SHIFT, right, movewindow, r"
        "$mainMod SHIFT, right, scroller:alignwindow, m"
        "$mainMod SHIFT, right, scroller:alignwindow, c"

        # Fullscreen (Don't change order of "alignwindow"!)
        "$mainMod, up, scroller:alignwindow, m"
        "$mainMod, up, fullscreen, 1"
        "$mainMod, up, scroller:alignwindow, c"
        "$mainMod, down, scroller:alignwindow, m"
        "$mainMod, down, fullscreen, 1"
        "$mainMod, down, scroller:alignwindow, c"

        "$mainMod SHIFT, up, scroller:alignwindow, m"
        "$mainMod SHIFT, up, fullscreen, 0"
        "$mainMod SHIFT, up, scroller:alignwindow, c"
        "$mainMod SHIFT, down, scroller:alignwindow, m"
        "$mainMod SHIFT, down, fullscreen, 0"
        "$mainMod SHIFT, down, scroller:alignwindow, c"

        # Cycle Window Size
        "$mainMod, page_up, scroller:cyclewidth, next"
        "$mainMod, page_up, scroller:cycleheight, next"
        "$mainMod, page_up, scroller:alignwindow, m"
        "$mainMod, page_up, scroller:alignwindow, c"

        "$mainMod, page_down, scroller:cyclewidth, prev"
        "$mainMod, page_down, scroller:cycleheight, prev"
        "$mainMod, page_down, scroller:alignwindow, m"
        "$mainMod, page_down, scroller:alignwindow, c"

        # Set Window Width
        "$mainMod, 1, scroller:setwidth, 0"
        "$mainMod, 1, scroller:alignwindow, m"
        "$mainMod, 1, scroller:alignwindow, c"

        "$mainMod, 2, scroller:setwidth, 1"
        "$mainMod, 2, scroller:alignwindow, m"
        "$mainMod, 2, scroller:alignwindow, c"

        "$mainMod, 3, scroller:setwidth, 2"
        "$mainMod, 3, scroller:alignwindow, m"
        "$mainMod, 3, scroller:alignwindow, c"

        "$mainMod, 4, scroller:setwidth, 3"
        "$mainMod, 4, scroller:alignwindow, m"
        "$mainMod, 4, scroller:alignwindow, c"

        "$mainMod, 5, scroller:setwidth, 4"
        "$mainMod, 5, scroller:alignwindow, m"
        "$mainMod, 5, scroller:alignwindow, c"

        # Set Window Height
        "$mainMod SHIFT, 1, scroller:setheight, 0"
        "$mainMod SHIFT, 1, scroller:alignwindow, m"
        "$mainMod SHIFT, 1, scroller:alignwindow, c"

        "$mainMod SHIFT, 2, scroller:setheight, 1"
        "$mainMod SHIFT, 2, scroller:alignwindow, m"
        "$mainMod SHIFT, 2, scroller:alignwindow, c"

        "$mainMod SHIFT, 3, scroller:setheight, 2"
        "$mainMod SHIFT, 3, scroller:alignwindow, m"
        "$mainMod SHIFT, 3, scroller:alignwindow, c"

        "$mainMod SHIFT, 4, scroller:setheight, 3"
        "$mainMod SHIFT, 4, scroller:alignwindow, m"
        "$mainMod SHIFT, 4, scroller:alignwindow, c"

        "$mainMod SHIFT, 5, scroller:setheight, 4"
        "$mainMod SHIFT, 5, scroller:alignwindow, m"
        "$mainMod SHIFT, 5, scroller:alignwindow, c"
      ];
      
    };
  };
}
