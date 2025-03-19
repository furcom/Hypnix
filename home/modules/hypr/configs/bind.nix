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
        "$mainMod, P, exec, bitwarden"
        "$mainMod, D, exec, discord"
        "$mainMod, F, exec, $filemanager"
        "$mainMod, B, exec, $webbrowser --ozone-platform=wayland"
        "$mainMod, T, exec, $terminal"
        "$mainMod, RETURN, exec, $terminal"
        "$mainMod SHIFT, B, exec, $webbrowser --ozone-platform=wayland --incognito"
        "$mainMod, F12, exec, virsh --connect qemu:///system start Windows11 && virt-viewer --connect qemu:///system Windows11" # Execute "sudo virsh net-autostart default" to make default network autostart !

        # Menus
        "$mainMod, I, exec, ~/.config/hypr/scripts/settings --menu"
        "$mainMod, A, exec, rofi -show drun -modi drun -theme-str 'window{width:30%;height:35%;}'"
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
        # Volume ("wpctl status" list devices. "wpctl inspect <id>" inspect specific device)
        "$mainMod, F1, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        "$mainMod, F2, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-"
        "$mainMod, F3, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
        "$mainMod, F4, exec, wpctl set-mute @DEFAULT_SOURCE@ toggle"
        "$mainMod, F5, exec, brightnessctl s 10%-"
        "$mainMod, F6, exec, brightnessctl s 10%+"
        "$mainMod SHIFT, F5, exec, brightnessctl -d 'tpacpi::kbd_backlight' set 50%-"
        "$mainMod SHIFT, F6, exec, brightnessctl -d 'tpacpi::kbd_backlight' set 50%+"

        # Special Workspace
        "$mainMod, SUPER_L, togglespecialworkspace"
        "$mainMod, space, movetoworkspace, special"

        # Windows
        "ALT, F4, killactive"
        "$mainMod, Q, killactive"

        # Overview
        "$mainMod, TAB, scroller:jump"

        # Floating
        "$mainMod, T, togglefloating"
        "$mainMod, T, centerwindow"

        # Floating
        "$mainMod, mouse:273, fullscreen, 1"
        "$mainMod, mouse:274, centerwindow, active"

        # Move focus
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"

        # Fullscreen
        "$mainMod, up, fullscreen, 1"
        "$mainMod, down, fullscreen, 1"
        "$mainMod, plus, fullscreen, 1"
        "$mainMod SHIFT, up, fullscreen, 0"
        "$mainMod SHIFT, down, fullscreen, 0"

        # Move Window
        "$mainMod SHIFT, left, movewindow, l"
        "$mainMod SHIFT, right, movewindow, r"

        # Cycle Window Size
        #"$mainMod, page_up, scroller:cyclewidth, n"
        #"$mainMod, page_down, scroller:cyclewidth, p"
        #"$mainMod SHIFT, page_up, scroller:cycleheight, n"
        #"$mainMod SHIFT, page_down, scroller:cycleheight, p"

        #"$mainMod, mouse_down, cyclewidth, p"
        #"$mainMod, mouse_up, cyclewidth, n"
        #"$mainMod SHIFT, mouse_down, cycleheight, p"
        #"$mainMod SHIFT, mouse_up, cycleheight, n"

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
