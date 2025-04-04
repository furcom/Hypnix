{ pkgs, ... }:

{
  programs.fastfetch = {
    enable = true;
    package = pkgs.fastfetch;
    settings = {
      "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
      logo = {
        source = "~/.config/fastfetch/nixos_logo";
        padding = {
          top = 2;
          bottom = 2;
          left = 1;
          right = 0;
        };
      };
      display = {
        separator = "";
        color = {
          separator = "1"; # Bold
        };
        constants = [
          "───────────────────────────"
        ];
        key = {
          type = "both";
          paddingLeft = 2;
        };
      };
      modules = [
        "break"
        {
          key = "User         ";
          keyColor = "yellow";
          type = "title";
          format = "{user-name-colored} {at-symbol-colored} {host-name-colored}";
        }
        {
          key = "OS           ";
          keyColor = "green";
          type = "os";
        }
        {
          key = "Kernel       ";
          keyColor = "green";
          type = "kernel";
        }
        {
          key = "WM           ";
          keyColor = "green";
          type = "wm";
        }
        {
          key = "DE           ";
          keyColor = "green";
          type = "de";
        }
        { 
          key = "Shell        ";
          keyColor = "green";
          type = "shell";
        }
        {
          key = "Terminal     ";
          keyColor = "green";
          type = "terminal";
        }
        {
          key = "Packages     ";
          keyColor = "green";
          type = "packages";
        }
        "break"
        {
          key = "Machine      ";
          keyColor = "blue";
          type = "host";
        }
        {
          key = "Resolution   ";
          keyColor = "blue";
          type = "display";
          compactType = "original-with-refresh-rate";
        }
        {
          key = "Uptime       ";
          keyColor = "blue";
          type = "uptime";
        }
        "break"
        {
          key = "CPU          ";
          keyColor = "cyan";
          type = "cpu";
        }
        {
          key = "GPU          ";
          keyColor = "cyan";
          type = "gpu";
        }
        {
          key = "Memory       ";
          keyColor = "cyan";
          type = "memory";
        }
        {
          key = "Disk         ";
          keyColor = "cyan";
          type = "disk";
        }
        "break"
        {
          key = "Color        ";
          keyColor = "yellow";
          type = "colors";
          paddingLeft = "50%";
          symbol = "circle";
          format = "{$1} {colors} {$1}";
        }
        "break"
      ];
    };
  };
}
