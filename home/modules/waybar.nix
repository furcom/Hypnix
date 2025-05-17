{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fftw
    iniparser
    wttrbar
  ];

  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    systemd = {
      enableDebug = false;
      enableInspect = false;
      enable = true;
      target = "graphical-session.target"; # systemctl --user list-units --type=target
    };
    settings = [
      {
        border-bottom = 0;
        border-left = 0;
        border-right = 0;
        border-top = 0;
        exclusive = true;
        fixed-center = true;
        layer = "top";
        mode = "dock";
        margin-left = 0;
        margin-right = 0;
        margin-top = 0;
        margin-bottom = 0;
        passthrough = false;
        position = "top";
        reload_style_on_change = true;
        start_hidden = false;

        /*--- LEFT ------------------------------------------------------*/
        
        modules-left = [
          "group/group-logo"
          "group/group-workspaces"
          "group/group-weather"
          "group/group-clock"
          "group/group-window"
        ];
        
        "group/group-logo" = {
          orientation = "inherit";
          drawer = {
            children-class = "not-memory";
            transition-duration = 300;
            transition-left-to-right = true;
          };
          modules = [ "custom/logo" "cpu" "memory" "disk" "temperature" ];
        };

        "custom/logo" = {
          format = "";
          on-click = "~/.config/hypnix/home/scripts/settings --menu";
          return-type = "exit";
          tooltip = true;
          tooltip-format = " Settings";
        };

        cpu = {
          format = " {usage}%";
          interval = 10;
          on-click = "kitty sh -c btop";
          tooltip = true;
        };

        temperature = {
          critical-threshold = 80;
          format = " {temperatureC}°C";     
          format-critical = "";
          hwmon-path = "/sys/devices/platform/thinkpad_hwmon/hwmon/hwmon5/temp1_input";
          on-click = "kitty sh -c btop";
          tooltip = true;
        };

        memory = {
          format = " {percentage}%";
          interval = 10;
          on-click = "kitty sh -c btop";
          tooltip = true;
        };

        disk = {
          format = " {percentage_used}%";
          interval = 10;
          on-click = "kitty sh -c btop";
          path = "/";
          tooltip = true;
          unit = "GB";
        };

        "group/group-workspaces" = {
          drawer = {
            children-class = "not-memory";
            transition-duration = 300;
            transition-left-to-right = true;
          };
          modules = [ "hyprland/workspaces" "custom/app-launcher" ];
          orientation = "inherit";
          tooltip = true;
        };

        "hyprland/workspaces" = {
          format = "{}";
          #format = "{icon}";
          on-click = "activate";
          active-only = false;
          hidden = false;
          format-icons = {
            "1" = "";
            "2" = "";
            "3" = "";
            "4" = "";
            "5" = "";
            "6" = "";
            "7" = "";
            "8" = "";
            "9" = "";
            "0" = "";
            urgent = "";
            active = "";
            default = "";
          };
          on-scroll-down = "hyprctl dispatch workspace +1";
          on-scroll-up = "hyprctl dispatch workspace -1";
          persistent-workspaces = { "*" = 1; };
          show-special = true;
          special-visible-only = true;
          smooth-scrolling-threshold = 1;
          sort-by-number = true;
          tooltip = false;
          window-rewrite = {
            "class<google-chrome>" = "";
            "class<discord>" = "󰙯";
            "class<Spotify>" = "󰓇";
            "class<Bitwarden>" = "󰞀";
            "class<waypaper>" = "󰸉";
            "class<it.mijorus.smile>" = "";
            "class<google-chrome> title<.*github.*>" = "";
            "class<google-chrome> title<.*youtube.*>" = "";
            "class<kitty>" = "󰄛";
            "title<*code*>" = "󰨞";
	        };
        };

        "custom/app-launcher" = {
          format = "󱗼";
          on-click = "rofi -show drun -modi drun -theme-str 'window{width:30%;height:35%;}'";
          tooltip = true;
          tooltip-format = "App-Launcher";
        };

        "group/group-weather" = {
          drawer = {
            children-class = "not-memory";
            transition-duration = 300;
            transition-left-to-right = true;
          };
          modules = [ "custom/weather" ];
          orientation = "inherit";
        };

        "custom/weather" = {
          exec = "wttrbar -l de --nerd";
          format = "{}°";
          interval = 3600;
          return-type = "json";
          tooltip = true;
        };

        "group/group-clock" = {
          drawer = {
            children-class = "not-memory";
            transition-duration = 300;
            transition-left-to-right = true;
          };
          modules = [ "clock" "clock#2" ];
          orientation = "inherit";
        };

        clock = {
          actions = {
            "on-click-right" = "mode";
            "on-scroll-up" = "tz_up";
            "on-scroll-down" = "tz_down";
          };
          format = "{:%H:%M}";
          format-alt = "{:%I:%M %p}";
          tooltip = false;
        };

        "clock#2" = {
          actions = {
            on-click-right = "mode";
            on-scroll-down = "tz_down";
            on-scroll-up = "tz_up";
          };
          format = "{:%a, %d.%m.%Y}";
          format-alt = "{:%A, %d. %B %Y}";
          calendar = {
            format = {
              months = "<span color='#ffead3'><b>{}</b></span>";
              days = "<span color='#ecc6d9'><b>{}</b></span>";
              weeks = "<span color='#99ffdd'><b>W{}</b></span>";
              weekdays = "<span color='#ffcc66'><b>{}</b></span>";
              today = "<span color='#ff6699'><b><u>{}</u></b></span>";
            };
            mode = "month";
            mode-mon-col = 3;
            on-scroll = 1;
            weeks-pos = "right";
          };
          tooltip = true;
          tooltip-format = "<tt><small>\n{calendar}\n</small></tt>";
        };

        "group/group-window" = {
          drawer = {
            children-class = "not-memory";
            transition-duration = 300;
            transition-left-to-right = true;
          };
          modules = [
            "hyprland/window"
            "custom/window-close"
            "custom/window-prev-workspace"
            "custom/window-next-workspace"
          ];
          orientation = "inherit";
          tooltip = true;
        };

        "hyprland/window" = {
          format = "{}";
          icon = true;
          icon-size = 22;
          max-length = 49;
          on-click = "rofi -modes window -show window";
          rewrite = {
            "(.*) - Mozilla Firefox" = "🌎 $1";
            "(.*) sh" = "kitty 󰅙 ";
            "(.*) - zsh" = "kitty 󰅙 ";
          };
          separate-outputs = true;
          tooltip = true;
          tooltip-format = "{title}";
        };

        "custom/window-close" = {
          format = "󰖭";
          on-click = "hyprctl dispatch killactive";
          tooltip = true;
          tooltip-format = "Close window";
        };

        "custom/window-prev-workspace" = {
          format = "󰜱";
          on-click = "hyprctl dispatch movetoworkspace -1";
          tooltip = true;
          tooltip-format = "Move window to previous workspace";
        };

        "custom/window-next-workspace" = {
          format = "󰜴";
          on-click = "hyprctl dispatch movetoworkspace +1";
          tooltip = true;
          tooltip-format = "Move window to next workspace";
        };

        /*--- CENTER ---*/
        
        modules-center = [ "group/group-packages" "group/group-media" "cava" ];
        
        "group/group-media" = {
          drawer = {
            children-class = "not-memory";
            transition-duration = 300;
            transition-left-to-right = false;
          };
          modules = [ "custom/media" "custom/prev-song" "custom/toggle-song" "custom/next-song" ];
          orientation = "inherit";
        };

        "custom/media" = {
          exec = "playerctl -a metadata --format '{\"text\": \"{{artist}} - {{markup_escape(title)}}\", \"tooltip\": \"{{playerName}}\", \"alt\": \"{{playerName}}\", \"class\": \"{{playerName}}\"}' -F";
          format = "{icon} {0}";
          format-icons = {
            "*" = "󰎆 ";
            chromium = " ";
            firefox = " ";
            spotify = " ";
          };
          max-length = 46;
          on-click = "playerctl play-pause";
          on-click-middle = "playerctl previous";
          on-click-right = "playerctl next";
          return-type = "json";
          tooltip = false;
        };

        "custom/toggle-song" = {
          exec = "playerctl -a metadata --format '{\"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
          format = "{icon}";
          format-icons = {
            Paused = "";
            Playing = "";
          };
          on-click = "playerctl play-pause";
          return-type = "json";
          tooltip = true;
          tooltip-format = "Play/Paus song";
        };

        "custom/prev-song" = {
          format = "󰒮";
          on-click = "playerctl previous";
          tooltip = true;
          tooltip-format = "Previous song";
        };

        "custom/next-song" = {
          format = "󰒭";
          on-click = "playerctl next";
          tooltip = true;
          tooltip-format = "Next song";
        };
        
        cava = {
          actions = { on-click-middle = "mode"; };
          autosens = 1;
          bars = 6;
          bar_delimiter = 32; # "SPACE" from ASCI Table
          cava_config = "$HOME/.config/cava/config";
          format-icons = [ "▁" "▂" "▃" "▄" "▅" "▆" "▇" "█" ];
          framerate = 59;
          hide_on_silence = true;
          higher_cutoff_freq = 10000;
          input_delay = 2;
          lower_cutoff_freq = 50;
          method = "pipewire";
          monstercat = false;
          noise_reduction = "0.77";
          on-click = "hyprctl dispatch focuswindow class:Spotify";
          on-click-right = "hyprctl dispatch focuswindow class:Spotify";
          reverse = false;
          sample_bits = 16;
          sample_rate = 44100;
          sleep_timer = 1;
          source = "auto";
          stereo = true;
          waves = false;
        };

        /*--- RIGHT ---*/
        
        modules-right = [
          "group/group-tray"
          "group/group-network"
          "group/group-bluetooth"
          "group/group-input"
          "group/group-output"
          "group/group-backlight"
          "group/group-battery"
          "group/group-powermenu"
        ];

        "group/group-tray" = {
          drawer = {
            transition-duration = 300;
            children-class = "not-memory";
            transition-left-to-right = false;
          };
          modules = [ "tray" ];
          orientation = "inherit";
        };

        tray = {
          hidden = true;
          icon-size = 16;
          show-passive-items = true;
          spacing = 8;
        };

        "group/group-network" = {
          drawer = {
            transition-duration = 300;
            children-class = "not-memory";
            transition-left-to-right = false;
          };
          modules = [ "network" "network#2" ];
          orientation = "inherit";
        };

        network = {
          format-disconnected = "";
          format-ethernet = "󰈀";
          format-wifi = "󰖩";
          #interface = "wlan0";
          on-click = "~/.config/hypnix/home/scripts/wifi";
          on-click-right = "kitty sh -c nmtui-connect";
          tooltip = true;
          tooltip-format = "{ipaddr}";
          tooltip-format-wifi = "󰛳 {essid}\n󰢽 {signalStrength}%\n󰩟 {ipaddr}";
          tooltip-format-ethernet = " {ifname} - {ipaddr}";
        };

        "network#2" = {
          format-disconnected = "Disconnected";
          format-ethernet = "{ipaddr}";
          format-wifi = "{essid}";
          #interface = "wlan0";
          on-click = "~/.config/hypnix/home/scripts/wifi";
          on-click-right = "kitty sh -c nmtui-connect";
          tooltip = true;
          tooltip-format = "{ipaddr}";
          tooltip-format-ethernet = " {ifname} - {ipaddr}";
          tooltip-format-wifi = "󰛳 {essid}\n󰢽 {signalStrength}%\n󰩟 {ipaddr}";
        };

        "group/group-bluetooth" = {
          drawer = {
            children-class = "not-memory";
            transition-duration = 300;
            transition-left-to-right = false;
          };
          modules = [ "bluetooth" "bluetooth#2" ];
          orientation = "inherit";
        };

        bluetooth = {
          format-connected = "󰂱";
          format-connected-battery = "󰂱󰥉";
          format-disabled = "󰂭";
          format-off = "󰂲";
          format-on = "";
          on-click = "~/.config/hypnix/home/scripts/bluetooth";
          on-click-right = "kitty sh -c bluetui";
          tooltip = true;
          tooltip-format = " {controller_alias} ({controller_address})\n󱘖 {num_connections} devices connected";
          tooltip-format-connected = "󰂱 {controller_alias} ({controller_address})\n󱘖 {num_connections} ({device_enumerate})";
          tooltip-format-enumerate-connected = "󰂱 {device_alias} ({device_address})";
          tooltip-format-enumerate-connected-battery = "󰂱 {device_alias} ({device_address}) (󰥉 {device_battery_percentage}%)";
        };

        "bluetooth#2" = {
          format-connected = "{device_alias}\t{device_address}";
          format-connected-battery = "{device_battery_percentage}%";
          format-disabled = "Disabled";
          format-off = "Off";
          format-on = "On";
          on-click = "~/.config/hypnix/home/scripts/bluetooth";
          on-click-right = "kitty sh -c bluetui";
          tooltip = true;
          tooltip-format = " {controller_alias} ({controller_address})\n󱘖 {num_connections} devices connected";
          tooltip-format-connected = "󰂱 {controller_alias} ({controller_address})\n󱘖 {num_connections} ({device_enumerate})";
          tooltip-format-enumerate-connected = "󰂱 {device_alias} ({device_address})";
          tooltip-format-enumerate-connected-battery = "󰂱 {device_alias} ({device_address}) (󰥉 {device_battery_percentage}%)";
        };

        "group/group-input" = {
          drawer = {
            children-class = "not-memory";
            transition-duration = 300;
            transition-left-to-right = false;
          };
          modules = [ "custom/pipewire" "custom/pipewire#2" ];
          orientation = "inherit";
        };

        "custom/pipewire" = {
          exec = "$HOME/.config/hypnix/home/scripts/audio_mic --icon";
          format = "{}";
          on-click = "$HOME/.config/hypnix/home/scripts/audio_mic --toggle";
          on-scroll-down = "$HOME/.config/hypnix/home/scripts/audio_mic --dec";
          on-click-middle = "$HOME/.config/hypnix/home/scripts/audio_mic --mid";
          on-click-right = "$HOME/.config/hypnix/home/scripts/audio_mic --max";
          on-scroll-up = "$HOME/.config/hypnix/home/scripts/audio_mic --inc";
          restart-interval = 0;
          smooth-scrolling-threshold = 1;
          tooltip = false;
        };

        "custom/pipewire#2" = {
          exec = "$HOME/.config/hypnix/home/scripts/audio_mic --text";
          format = "{}";
          on-click = "$HOME/.config/hypnix/home/scripts/audio_mic --toggle";
          on-scroll-down = "$HOME/.config/hypnix/home/scripts/audio_mic --dec";
          on-click-middle = "$HOME/.config/hypnix/home/scripts/audio_mic --mid";
          on-click-right = "$HOME/.config/hypnix/home/scripts/audio_mic --max";
          on-scroll-up = "$HOME/.config/hypnix/home/scripts/audio_mic --inc";
          restart-interval = 0;
          smooth-scrolling-threshold = 1;
          tooltip = false;
        };

        "group/group-output" = {
          drawer = {
            children-class = "not-memory";
            transition-duration = 300;
            transition-left-to-right = false;
          };
          modules = [ "wireplumber" "wireplumber#2" ];
          orientation = "inherit";
        };

        wireplumber = {
          format = "{icon}";
          format-icons = [ "󰕿" "󰖀" "󰕾" "󱄡" ];
          format-muted = "󰖁";
          max-volume = "100.0";
          on-click = "$HOME/.config/hypnix/home/scripts/audio_spk --toggle";
          on-scroll-down = "$HOME/.config/hypnix/home/scripts/audio_spk --dec";
          on-click-middle = "$HOME/.config/hypnix/home/scripts/audio_spk --mid";
          on-click-right = "$HOME/.config/hypnix/home/scripts/audio_spk --max";
          on-scroll-up = "$HOME/.config/hypnix/home/scripts/audio_spk --inc";
          scroll-step = 1;
          tooltip = false;
        };

        "wireplumber#2" = {
          format = "{volume}%";
          format-icons = [ "󰕿" "󰖀" "󰕾" "󱄡" ];
          format-muted = "Muted";
          max-volume = "100.0";
          on-click = "$HOME/.config/hypnix/home/scripts/audio_spk --toggle";
          on-scroll-down = "$HOME/.config/hypnix/home/scripts/audio_spk --dec";
          on-click-middle = "$HOME/.config/hypnix/home/scripts/audio_spk --mid";
          on-click-right = "$HOME/.config/hypnix/home/scripts/audio_spk --max";
          on-scroll-up = "$HOME/.config/hypnix/home/scripts/audio_spk --inc";
          scroll-step = 1;
          tooltip = false;
        };
        
        "group/group-backlight" = {
          drawer = {
            children-class = "not-memory";
            transition-duration = 300;
            transition-left-to-right = false;
          };
          modules = [ "backlight" "backlight#2" ];
          orientation = "inherit";
        };

        backlight = {
          device = "intel_backlight";
          format = "{icon}";
          format-icons = [ "󰃛" "󰃞" "󰃟" "󰃝" "󰃠" "󰃚" ];
          on-click = "$HOME/.config/hypnix/home/scripts/brightness --min";
          on-scroll-down = "$HOME/.config/hypnix/home/scripts/brightness --dec";
          on-click-middle = "$HOME/.config/hypnix/home/scripts/brightness --mid";
          on-click-right = "$HOME/.config/hypnix/home/scripts/brightness --max";
          on-scroll-up = "$HOME/.config/hypnix/home/scripts/brightness --inc";
          smooth-scrolling-threshold = 1;
          tooltip = false;
        };

        "backlight#2" = {
          device = "intel_backlight";
          format = "{percent}%";
          format-icons = [ "󰃛" "󰃞" "󰃞" "󰃟" "󰃝" "󰃠" "󰖨" ];
          on-click = "$HOME/.config/hypnix/home/scripts/brightness --min";
          on-scroll-down = "$HOME/.config/hypnix/home/scripts/brightness --dec";
          on-click-middle = "$HOME/.config/hypnix/home/scripts/brightness --mid";
          on-click-right = "$HOME/.config/hypnix/home/scripts/brightness --max";
          on-scroll-up = "$HOME/.config/hypnix/home/scripts/brightness --inc";
          smooth-scrolling-threshold = 1;
          tooltip = false;
        };

        "group/group-battery" = {
          drawer = {
            children-class = "not-memory";
            transition-duration = 300;
            transition-left-to-right = false;
          };
          modules = [ "battery" "power-profiles-daemon" ];
          orientation = "inherit";
        };

        battery = {
          format = "{icon} {capacity}%";
          format-alt = "{time}";
          format-charging = "󰂄 {capacity}%";
          format-icons = [ "󰁻" "󰁼" "󰁾" "󰂀" "󰂂" "󰁹" ];
          format-plugged = "󰂄  {capacity}%";
          interval = 3;
          states = {
            critical = 10;
            good = 95;
            warning = 20;
          };
          tooltip = false;
        };

        "power-profiles-daemon" = {
          balanced = "";
          default = "";
          format = "{icon} {profile}";
          format-icons = {
            performance = "";
            power-saver = "";
            balanced = "";
          };
          tooltip = false;
        };

        "group/group-powermenu" = {
          drawer = {
            children-class = "not-memory";
            transition-duration = 300;
            transition-left-to-right = false;
          };
          modules = [
            "custom/powermenu-poweroff"
            "custom/powermenu-reboot"
            "custom/powermenu-suspend"
            "custom/powermenu-hibernate"
            "custom/powermenu-logout"
            "custom/powermenu-lock"
            "custom/battery-alert"
          ];
          orientation = "inherit";
        };

        "custom/powermenu-poweroff" = {
          format = "⏻";
          on-click = "systemctl poweroff";
          tooltip = true;
          tooltip-format = "Poweroff";
        };

        "custom/powermenu-reboot" = {
          format = "";
          on-click = "systemctl reboot";
          tooltip = true;
          tooltip-format = "Reboot";
        };

        "custom/powermenu-suspend" = {
          format = "󰤄";
          on-click = "systemctl suspend";
          tooltip = true;
          tooltip-format = "Suspend";
        };

        "custom/powermenu-hibernate" = {
          format = "󱠩";
          on-click = "systemctl hibernate";
          tooltip = true;
          tooltip-format = "Hibernate";
        };

        "custom/powermenu-logout" = {
          format = "󰍃";
          on-click = "hyprctl dispatch exit";
          tooltip = true;
          tooltip-format = "Logout";
        };

        "custom/powermenu-lock" = {
          format = "";
          on-click = "hyprlock";
          tooltip = true;
          tooltip-format = "Lock";
        };

        "custom/battery-alert" = {
          exec = "/home/furcom/.config/hypnix/home/scripts/battery";
          format = "";
          interval = 60;
          tooltip = false;
        };
      }
    ];

    style = ''
      @import url("./colors.css");
      
      /* === General === */

      * {
        background: transparent;
        background-color: transparent;
        border: none;
        border-radius: 8px;
        color: @foreground;
        font-family: "0xProto Nerd Font Mono";
        font-size: 18px;
        margin: 0;
        padding: 0;
        transition-duration: 150ms;
      }
      
      /* === Bar === */

      window#waybar {
        background: none;
        color: @foreground;
      }

      window#waybar > box {
        background-color: @background;
        border-radius: 10px;
        box-shadow: 0 0 4px 0 rgba(0,0,0,0.33);
        margin: 16px 16px 0 16px;
        min-height: 32px;
        padding: 4px;
      }
      
      window#waybar.hidden {
        opacity: 0.2;
      }
      
      @keyframes blink {
        to {
          background-color: #ffffff;
          color: #000000;
        }
      }
      
      /* === Tooltip & Menu === */

      tooltip box{
        background-color: @background;
        padding: 8px 16px;
      }

      tooltip label {
        color: @foreground;
      }
      
      /*----------------*/
      /*----- LEFT -----*/
      /*----------------*/
      
      .modules-left {}
      
      /* === Logo === */

      #group-logo {
        background-color: transparent;
        border: 2px solid transparent;
        border-radius: 7px;
        padding: 4px;
        margin: 0 4px 0 0;
      }
      
      #custom-logo {
        background-color: @color2;
        border-radius: 4px;
        min-width: 24px;
      }
      
      #group-logo:hover {
        border: 2px solid @color2;
      }
      
      #custom-logo:hover {
        background-color: @color2_light;
      }

      /* === CPU === */

      #cpu {
        border-radius: 4px;
        margin: 0 0 0 4px;
        min-width: 24px;
        padding: 0 8px;
      }
      
      #cpu:hover {
        background-color: @color2_light;
      }
      
      /* === Temperature === */

      #temperature {
        border-radius: 4px;
        margin: 0 0 0 4px;
        min-width: 24px;
        padding: 0 8px;
      }
      
      #temperature.critical {
        background-color: #ff0000;
      }
      
      #temperature:hover {
        background-color: @color2_light;
      }
      
      /* === RAM memory === */
      
      #memory {
        border-radius: 4px;
        margin: 0 0 0 4px;
        min-width: 24px;
        padding: 0 8px;
      }
      
      #memory:hover {
        background-color: @color2_light;
      }
      
      /* === Disk == */

      #disk {
        border-radius: 4px;
        margin: 0 0 0 4px;
        min-width: 24px;
        padding: 0 8px;
      }
      
      #disk:hover {
        background-color: @color2_light;
      }

      /* === Workspaces === */
      
      #group-workspaces {
        border: 2px solid transparent;
        border-radius: 7px;
        margin: 0 4px 0 0;
        padding: 4px;
      }
      
      #workspaces {
        border-radius: 4px;
      }
      
      #workspaces button.urgent {
        background-color: @color5;
        border-radius: 4px;
        min-width: 24px;
      }
      
      #workspaces button,
      #workspaces button.persistent {
        border-radius: 4px;
        margin: 0 4px 0 0;
        min-width: 24px;
      }
      
      #workspaces button.active {
        border-bottom: 2px solid @color2;
        border-radius: 0px;
      }
      
      #custom-app-launcher {
        border-radius: 4px;
        margin: 0 0 0 4px;
        min-width: 24px;
      }
      
      #workspaces button:hover {
        background-color: @color2_light;
        box-shadow: none;
        text-shadow: none;
      }
      
      #group-workspaces:hover {
        border: 2px solid @color2;
        border-color: @color2;
      }
      
      #workspaces button.active:hover {
        background-color: @color2_light;
        border-color: transparent;
        border-radius: 4px;
      }

      #custom-app-launcher:hover,
      #workspaces button.default:hover,
      #workspaces button.persistent:hover,
      #workspaces button.urgent:hover {
        background-color: @color2_light;
        border-radius: 4px;
      }

      /* === Weather === */

      #group-weather {
        border-radius: 7px;
        border: 2px solid transparent;
        margin: 0 0 0 4px;
        padding: 4px;
      }

      #custom-weather {
        min-width: 24px;
        padding: 0 8px;
      }
      
      #custom-weather:hover {
        background-color: @color2;
        border-radius: 4px;
      }

      #group-weather:hover {
        border-color: @color2;
        border: 2px solid @color2;
      }
      
      /* === Clock === */

      #group-clock {
        border-radius: 7px;
        border: 2px solid transparent;
        margin: 0 0 0 4px;
        padding: 4px;
      }

      #clock {
        border-radius: 4px;
        min-width: 24px;
        padding: 0 8px;
      }
      
      #clock.2 {
        border-radius: 4px;
        margin: 0 0 0 4px;
        padding: 0 8px;
      }
      
      #clock:hover {
        background-color: @color2_light;
      }
      
      #clock.2:hover {
        background-color: @color2_light;
      }
      
      #group-clock:hover {
        border: 2px solid @color2;
        border-color: @color2;
      }
      
      /* === Window === */

      #group-window {
        border-radius: 7px;
        border: 2px solid transparent;
        margin: 0 0 0 4px;
        padding: 4px;
      }
      
      #window {
        border-radius: 4px;
        min-width: 24px;
        padding: 0 8px;
      }
      
      window#waybar.empty #group-window,
      window#waybar.empty #window {
        background-color: transparent; /* Dont't remove or window background will be visible in Waybar when empty */
        color: transparent;
        margin: 0;
        min-width: 0;
        padding: 0;
      }
      
      #custom-window-close,
      #custom-window-next-workspace,
      #custom-window-prev-workspace {
        border-radius: 4px;
        margin: 0 0 0 4px;
        min-width: 24px;
      }
      
      #group-window:hover {
        border-color: @color2;
        border: 2px solid @color2;
      }
      
      #window:hover {
        background-color: @color2_light;
      }
      
      #custom-window-close:hover,
      #custom-window-next-workspace:hover,
      #custom-window-prev-workspace:hover {
        background-color: @color2_light;
      }
      
      /*------------------*/
      /*----- CENTER -----*/
      /*------------------*/

      .modules-center {}

      /* === Packages === */

      #group-packages {
        border-radius: 7px;
        margin: 0 0 0 4px;
        padding: 4px;
      }
      
      #custom-packages {
        background-color: #007700;
        min-width: 24px;
      }
      
      #group-packages:hover {
        background-color: #007700;
        padding: 0 8px;
      }
      
      /* === Media === */

      #group-media {
        border-radius: 7px;
        border: 2px solid transparent;
        margin: 0 4px 0 0;
        min-width: 0;
        padding: 4px;
      }
      
      #custom-media {
        border-radius: 4px;
        margin: 0 0 0 4px;
        min-width: 24px;
        padding: 0 8px;
      }
      
      #custom-next-song,
      #custom-prev-song,
      #custom-toggle-song {
        border-radius: 4px;
        margin: 0 4px 0 0;
        min-width: 24px;
      }
      
      #group-media:hover {
        border-color: @color2;
        border: 2px solid @color2;
      }
      
      #custom-media:hover,
      #custom-next-song:hover,
      #custom-prev-song:hover,
      #custom-toggle-song:hover {
        background-color: @color2_light;
      }

      /* === cava === */
      
      #cava {
        background-color: transparent;
        border-radius: 7px;
        padding: 4px;
      }
      
      /*-----------------*/
      /*----- RIGHT -----*/
      /*-----------------*/

      .modules-right {}
      
      /* === Tray === */

      #group-tray {
        border: 2px solid transparent;
        margin: 0 4px 0 0;
        padding: 0 4px;
      }
      
      #tray {
        color: @foreground;
        min-width: 24px;
      }
      
      #tray>.active,
      #tray>.passive {
        background-color: transparent;
      }
      
      #tray>.active:hover,
      #tray>.passive:hover {
        background-color: transparent;
      }
      
      #tray>.needs-attention {
        background-color: #ff0000;
      }
      
      #tray menu {
        background-color: @background;
        border: 1px solid @color4;
        border-radius: 7px;
        color: @foreground;
        padding: 8px;
      }
      
      #tray menu menuitem {
        background-color: @background_light;
        margin: 4px;
        padding: 8px;
      }
      
      #group-tray:hover {
        border-color: @color2;
        border: 2px solid @color2;
      }
      
      #tray menu *:hover,
      #tray menu menuitem:hover {
        background-color: @color2;
        color: @foreground;
      }
      
      /* === Network === */

      #group-network {
        border-radius: 7px;
        border: 2px solid transparent;
        margin: 0 4px 0 0;
        padding: 4px;
      }
      
      #network {
        border-radius: 4px;
        min-width: 24px;
      }
      
      #network.2 {
        border-radius: 4px;
        margin: 0 4px 0 0;
        padding: 0 8px;
      }
      
      #group-network:hover {
        border-color: @color2;
        border: 2px solid @color2;
      }
      
      #network:hover {
        background-color: @color2_light;
      }
      
      /* === Bluetooth === */

      #group-bluetooth {
        border-radius: 7px;
        border: 2px solid transparent;
        margin: 0 4px 0 0;
        padding: 4px;
      }
      
      #bluetooth {
        border-radius: 4px;
        min-width: 24px;
      }
      
      #bluetooth.2 {
        border-radius: 4px;
        margin: 0 4px 0 0;
        padding: 0 8px;
      }
      
      #group-bluetooth:hover {
        border-color: @color2;
        border: 2px solid @color2;
      }
      
      #bluetooth:hover {
        background-color: @color2_light;
      }
      
      /* === Input === */

      #group-input {
        border-radius: 7px;
        border: 2px solid transparent;
        margin: 0 4px 0 0;
        padding: 4px;
      }
      
      #custom-pipewire {
        border-radius: 4px;
        min-width: 24px;
      }
      
      #custom-pipewire.2 {
        border-radius: 4px;
        margin: 0 4px 0 0;
        padding: 0 8px;
      }
      
      #group-input:hover {
        border-color: @color2;
        border: 2px solid @color2;
      }
      
      #custom-pipewire:hover,
      #custom-pipewire2:hover {
        background-color: @color2_light;
      }
      
      /* === Output ===*/

      #group-output {
        border-radius: 7px;
        border: 2px solid transparent;
        margin: 0 4px 0 0;
        padding: 4px;
      }
      
      #wireplumber {
        border-radius: 4px;
        min-width: 24px;
      }
      
      #wireplumber.2 {
        border-radius: 4px;
        margin: 0 4px 0 0;
        padding: 0 8px;
      }
      
      #group-output:hover {
        border-color: @color2;
        border: 2px solid @color2;
      }
      
      #wireplumber:hover {
        background-color: @color2_light;
      }
      
      /* === Backlight === */

      #group-backlight {
        border-radius: 7px;
        border: 2px solid transparent;
        margin: 0 4px 0 0;
        padding: 4px;
      }
      
      #backlight {
        border-radius: 4px;
        min-width: 24px;
      }
      
      #backlight.2 {
        border-radius: 4px;
        margin: 0 4px 0 0;
        padding: 0 8px;
      }
      
      #group-backlight:hover {
        border-color: @color2;
        border: 2px solid @color2;
      }
      
      #backlight:hover {
        background-color: @color2_light;
      }
      
      /* === Battery === */

      #group-battery {
        border-radius: 7px;
        border: 2px solid transparent;
        margin: 0 4px 0 0;
        padding: 4px;
      }
      
      #battery {
        border-radius: 4px;
        min-width: 24px;
        padding: 0 4px;
      }
      
      #power-profiles-daemon {
        border-radius: 4px;
        margin: 0 4px 0 0;
        min-width: 24px;
        padding: 0 8px;
      }
      
      #battery.charging,
      #battery.plugged {
        background-color: #007700;
        border-radius: 7px;
        min-width: 24px;
        padding: 0 8px;
      }
      
      #battery.warning:not(.charging) {
        background-color: #ffbe61;
        border-radius: 7px;
        color: @background;
        min-width: 24px;
        padding: 0 8px;
      }
      
      #battery.critical:not(.charging) {
        animation-direction: alternate;
        animation-duration: 0.5s;
        animation-iteration-count: infinite;
        animation-name: blink;
        animation-timing-function: linear;
        background-color: #f53c3c;
        border-radius: 7px;
        min-width: 24px;
        padding: 0 8px;
      }
      
      #group-battery:hover {
        border-color: @color2;
        border: 2px solid @color2;
      }
      
      #battery.charging:hover,
      #battery.critical:not(.charging):hover,
      #battery:hover,
      #battery.plugged:hover,
      #battery.warning:not(.charging):hover,
      #power-profiles-daemon:hover {
        background-color: @color2_light;
        border-radius: 4px;
        color: @foreground;
      }
      
      /* === Powermenu === */

      #group-powermenu {
        background-color: transparent;
        border: 2px solid transparent;
        border-radius: 7px;
        padding: 4px;
      }
      
      #custom-powermenu-poweroff {
        background-color: @color2;
        border-radius: 7px;
        min-width: 24px;
      }
      
      #custom-powermenu-lock,
      #custom-powermenu-logout,
      #custom-powermenu-hibernate,
      #custom-powermenu-reboot,
      #custom-powermenu-suspend {
        border-radius: 4px;
        margin: 0 4px 0 0;
        padding: 0 8px;
      }
      
      #group-powermenu:hover {
        border-color: @color2;
        border: 2px solid @color2;
      }
      
      #custom-powermenu-lock:hover,
      #custom-powermenu-logout:hover,
      #custom-powermenu-hibernate:hover,
      #custom-powermenu-poweroff:hover,
      #custom-powermenu-reboot:hover,
      #custom-powermenu-suspend:hover {
        background-color: @color2_light;
        border-radius: 4px;
      }
    '';
  };
}
