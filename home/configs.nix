{ inputs, config, pkgs, lib, ... }:
{
  home.file = {
      ".config/fastfetch" = { source = ./.config/fastfetch; recursive = true; };
      ".config/fusuma" = { source = ./.config/fusuma; recursive = true; };
      ".config/kitty/bell.oga" = { source = ./.config/kitty/bell.oga; };
      ".config/kitty/keymaps.conf" = { source = ./.config/kitty/keymaps.conf; };
      ".config/kitty/kitty_logo.png" = { source = ./.config/kitty/kitty_logo.png; };
      ".config/kitty/kitty.conf" = { source = ./.config/kitty/kitty.conf; };
      ".config/nvim" = { source = ./.config/nvim; recursive = true; };
      ".config/oh-my-posh/oh-my-posh" = { source = ./.config/oh-my-posh/oh-my-posh; };
      ".config/rofi/config.rasi" = { source = ./.config/rofi/config.rasi; };
      ".config/wallust" = { source = ./.config/wallust; recursive = true; };
      ".config/waypaper" = { source = ./.config/waypaper; recursive = true; };
      ".config/wlogout" = { source = ./.config/wlogout; recursive = true; };
      ".zshrc" = { source = ./.config/.zshrc; };
  };
}

