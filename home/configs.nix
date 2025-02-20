{ inputs, config, pkgs, ... }:

{
  home.file = {
      ".config/fastfetch" = { source = ./configs/fastfetch; recursive = true; };
      ".config/fusuma" = { source = ./configs/fusuma; recursive = true; };

      ".config/hypr/configs" = { source = ./configs/hypr/configs; recursive = true; };
      ".config/hypr/scripts" = { source = ./configs/hypr/scripts; recursive = true; };
      ".config/hypr/hyprland.conf" = { source = ./configs/hypr/hyprland.conf; };
      ".config/hypr/hyprpaper.conf" = { source = ./configs/hypr/hyprpaper.conf; };

      ".config/kitty/bell.oga" = { source = ./configs/kitty/bell.oga; };
      ".config/kitty/keymaps.conf" = { source = ./configs/kitty/keymaps.conf; };
      ".config/kitty/kitty_logo.png" = { source = ./configs/kitty/kitty_logo.png; };
      ".config/kitty/kitty.conf" = { source = ./configs/kitty/kitty.conf; };

      ".config/nvim" = { source = ./configs/nvim; recursive = true; };

      ".config/oh-my-posh/oh-my-posh" = { source = ./configs/oh-my-posh/oh-my-posh; };

      ".config/rofi/config.rasi" = { source = ./configs/rofi/config.rasi; };

      ".config/wallust" = { source = ./configs/wallust; recursive = true; };

      ".config/waypaper" = { source = ./configs/waypaper; recursive = true; };

      ".config/wlogout" = { source = ./configs/wlogout; recursive = true; };

      ".zshrc" = { source = ./configs/.zshrc; };
  };
}
