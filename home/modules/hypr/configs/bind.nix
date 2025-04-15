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
        # === PROGRAMS === #

        "$mainMod, A, exec, rofi -show drun -modi drun -theme-str 'window{width:30%;height:35%;}'"

        "$mainMod, B, exec, google-chrome-stable --ozone-platform=wayland"
        "$mainMod SHIFT, B, exec, google-chrome-stable --ozone-platform=wayland --incognito"

        "$mainMod, C, exec, hyprpicker -a"

        "$mainMod, D, focuswindow, class:discord"
        "$mainMod, D, exec, discord"

        "$mainMod, F, exec, nemo"

        "$mainMod, L, exec, hyprlock"

        "$mainMod, M, focuswindow, class:Spotify"
        "$mainMod, M, exec, spotify"

        "$mainMod, P, focuswindow, class:Bitwarden"
        "$mainMod, P, exec, bitwarden"

        "$mainMod, S, exec, rofi -show ssh -theme-str 'window{width:20%;height:35%;} configuration{show-icons:false;}'"

        "$mainMod, T, exec, $terminal"
        "$mainMod, RETURN, exec, $terminal"

        "$mainMod, V, exec, cliphist list | rofi -dmenu -theme-str 'window{width:50%;height:35%;} configuration{show-icons:false;}' | cliphist decode | wl-copy"

        "$mainMod, W, exec, waypaper"
        "$mainMod SHIFT, W, exec, waypaper --random"

        "$mainMod, DELETE, exec, wlogout"

        "$mainMod, ESCAPE, exec, $HOME/.config/hypnix/home/scripts/settings --menu"

        # Execute "sudo virsh net-autostart default" to make default network autostart !
        "$mainMod, F12, exec, virsh --connect qemu:///system start Windows11 && virt-viewer --connect qemu:///system Windows11"

        "$mainMod, PERIOD, exec, smile"

        "$mainMod, PRINT, exec, hyprshot -m output --m eDP-1"
        "$mainMod SHIFT, PRINT, exec, hyprshot -m window"
        "$mainMod CTRL, PRINT, exec, hyprshot -m region"

        # === HARDWARE === #
        
        # Volume ("wpctl status" list devices. "wpctl inspect <id>" inspect specific device)
        "$mainMod, F1, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        "$mainMod, F2, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-"
        "$mainMod, F3, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"

        # Microphone
        "$mainMod, F4, exec, wpctl set-mute @DEFAULT_SOURCE@ toggle"

        # Brightness
        "$mainMod, F5, exec, brightnessctl s 10%-"
        "$mainMod, F6, exec, brightnessctl s 10%+"

        # Keyboard backlight
        "$mainMod SHIFT, F5, exec, brightnessctl -d 'tpacpi::kbd_backlight' set 50%-"
        "$mainMod SHIFT, F6, exec, brightnessctl -d 'tpacpi::kbd_backlight' set 50%+"

        # === WORKSPACES === #

        # Special Workspace
        "$mainMod, SUPER_L, togglespecialworkspace"
        "$mainMod, Y, movetoworkspace, special"
        "$mainMod, X, movetoworkspace, 1"

        # Switch workspaces with mainMod + [0-9]
        #"$mainMod, 1, workspace, 1"
        #"$mainMod, 2, workspace, 2"
        #"$mainMod, 3, workspace, 3"
        #"$mainMod, 4, workspace, 4"
        #"$mainMod, 5, workspace, 5"
        #"$mainMod, 6, workspace, 6"
        #"$mainMod, 7, workspace, 7"
        #"$mainMod, 8, workspace, 8"
        #"$mainMod, 9, workspace, 9"
        #"$mainMod, 0, workspace, 10"
        #"$mainMod, page_up, workspace, -1"
        #"$mainMod, page_down, workspace, +1"

        # Scroll through existing workspaces with mainMod + scroll
        #"$mainMod, mouse_down, workspace, e+1"
        #"$mainMod, mouse_up, workspace, e-1"

        # === WINDOWS === #
        
        # Overview
        "$mainMod, TAB, exec, hyprctl dispatch scroller:jump"

        # Close
        "ALT, F4, killactive"
        "$mainMod, Q, killactive"

        # Fullscreen
        "$mainMod, plus, fullscreen, 1"
        "$mainMod SHIFT, plus, fullscreen, 0"

        # Floating
        "$mainMod, E, togglefloating"
        "$mainMod, E, centerwindow"

        "$mainMod, mouse:273, fullscreen, 1"
        "$mainMod, mouse:274, centerwindow, active"

        # Move focus
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # Move Window
        "$mainMod SHIFT, left, movewindow, l"
        "$mainMod SHIFT, right, movewindow, r"
        "$mainMod SHIFT, up, movewindow, u"
        "$mainMod SHIFT, down, movewindow, d"

        "$mainMod SHIFT, page_up, movetoworkspace, -1"
        "$mainMod SHIFT, page_down, movetoworkspace, +1"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        #"$mainMod SHIFT, 1, movetoworkspace, 1"
        #"$mainMod SHIFT, 2, movetoworkspace, 2"
        #"$mainMod SHIFT, 3, movetoworkspace, 3"
        #"$mainMod SHIFT, 4, movetoworkspace, 4"
        #"$mainMod SHIFT, 5, movetoworkspace, 5"
        #"$mainMod SHIFT, 6, movetoworkspace, 6"
        #"$mainMod SHIFT, 7, movetoworkspace, 7"
        #"$mainMod SHIFT, 8, movetoworkspace, 8"
        #"$mainMod SHIFT, 9, movetoworkspace, 9"
        #"$mainMod SHIFT, 0, movetoworkspace, 10"

        # Plugin - Hyprscroller
        "$mainMod, 1, scroller:setwidth, 0"
        "$mainMod, 2, scroller:setwidth, 1"
        "$mainMod, 3, scroller:setwidth, 2"
        "$mainMod, 4, scroller:setwidth, 3"

        "$mainMod SHIFT, 1, scroller:setheight, 0"
        "$mainMod SHIFT, 2, scroller:setheight, 1"
        "$mainMod SHIFT, 3, scroller:setheight, 2"
        "$mainMod SHIFT, 4, scroller:setheight, 3"
      ];
      
    };
  };
}
