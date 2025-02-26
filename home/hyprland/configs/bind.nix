{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {

      bind = [
        # Programs #
        "$mainMod, B, exec, bitwarden --ozone-platform=wayland" # Bitwarden
        "$mainMod, E, exec, $filemanager" # File manager
        "$mainMod, G, exec, $webbrowser --ozone-platform=wayland" # Google Chrome
        "$mainMod, N, exec, nwg-look" # GTK Settings
        "$mainMod, T, exec, $terminal" # Terminal
        "$mainMod, RETURN, exec, $terminal" # Terminal
        "$mainMod SHIFT, G, exec, $webbrowser --ozone-platform=wayland --incognito" # Google Chrome (Incognito)

        # Menus #
        "$mainMod, I, exec, $HOME/.config/hypr/scripts/settings" # Settings
        "$mainMod, R, exec, rofi -show drun -modi drun" # Run / App launcher
        "$mainMod, S, exec, rofi -show ssh" # SSH
        "$mainMod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy" # Clipboard
        "$mainMod, W, exec, waypaper" # Wallpaper changer GUI
        "$mainMod, DELETE, exec, wlogout" # Power/logout menu
        "$mainMod, ESCAPE, exec, ~/.config/hypr/scripts/settings" # Settings
        "$mainMod, PERIOD, exec, smile" # Emoji picker
        "$mainMod SHIFT, C, exec, hyprpicker -a" # Color picker
        "$mainMod SHIFT, W, exec, waypaper --random" # Random wallpaper
        "$mainMod SHIFT, TAB, exec, rofi -modes window -show window" # Window switcher

        # Etc. #
        "$mainMod, TAB, hyprexpo:expo, toggle" # can be: toggle, off/disable or on/enable
        "$mainMod CTRL, PRINT, exec, hyprshot -m region" # Screenshot specific region
        "$mainMod SHIFT, PRINT, exec, hyprshot -m window" # Screenshot specific window
        "$mainMod, PRINT, exec, hyprshot -m output --m eDP-1" # Screenshot whole screen ('hyprctl monitors' to find monitor's name)

        # Hardware #
        # Volume ("wpctl status" list devices. "wpctl inspect <id>" inspect specific device)
        "$mainMod, F1, exec, ~/.config/hypr/scripts/audio_out --toggle" # Mute/Unmute speaker
        "$mainMod, F2, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-" # Volume -5%
        "$mainMod, F3, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+" # Volume +5%
        "$mainMod, F4, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle" # Mute/Unmute microphone
        "$mainMod, F5, exec, brightnessctl s 10%-" # Screen brightness -10%
        "$mainMod, F6, exec, brightnessctl s 10%+" # Screen brightness +10%
        "$mainMod SHIFT, F5, exec, brightnessctl -d 'tpacpi::kbd_backlight' set 50%-" # Keyboard backlight -
        "$mainMod SHIFT, F6, exec, brightnessctl -d 'tpacpi::kbd_backlight' set 50%+" # Keyboard backlight +

        # Windows #
        "ALT, F4, killactive," # Close focused window
        "$mainMod, C, exec, hyprctl dispatch centerwindow active" # Center floating window
        "$mainMod, F, exec, hyprctl dispatch togglefloating" # Detach / Make window floating
        "$mainMod, L, exec, $lockscreen" # Lock screen
        "$mainMod, Q, killactive," # Close focused window
        "$mainMod SHIFT, right, exec, hyprctl dispatch swapwindow r" # Swap focused window position with right window
        "$mainMod SHIFT, left, exec, hyprctl dispatch swapwindow l" # Swap focused window position with left window
        "$mainMod SHIFT, up, exec, hyprctl dispatch swapwindow t" # Swap focused window position with left window
        "$mainMod SHIFT, down, exec, hyprctl dispatch swapwindow b" # Swap focused window position with left window
        "$mainMod SHIFT, page_down, exec, hyprctl dispatch movetoworkspace +1"
        "$mainMod SHIFT, page_up, exec, hyprctl dispatch movetoworkspace -1"

        # Move focus with mainMod + arrow keys
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # Resize Windows
        "$mainMod, plus, exec, hyprctl dispatch fullscreen 1" # Maximize window size
        "$mainMod SHIFT, plus, exec, hyprctl dispatch fullscreen 0" # Fullscreen window size

        # Move/resize windows with mainMod + LMB/RMB and dragging
        "$mainMod, mouse:273, exec, hyprctl dispatch togglefloating active"
        "$mainMod, mouse:274, exec, hyprctl dispatch centerwindow active"

        # Scroll through existing workspaces with mainMod + scroll
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"

        # Switch workspaces with mainMod + [0-9]
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"
        "$mainMod, page_up, workspace, -1"
        "$mainMod, page_down, workspace, +1"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"
      ];
      
      bindm = [
        # Move/resize windows with mainMod + LMB/RMB and dragging
        "$mainMod, mouse:272, movewindow"
      ];

    };
  };
}
