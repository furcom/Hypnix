{ pkgs, ... }:
{
  home = {
    pointerCursor = {
      enable = true;
      hyprcursor = { enable = true; size = 32; };
      gtk.enable = true;
      x11.enable = true;
      name = "Catppuccin Mocha Mauve";
      package = pkgs.catppuccin-cursors.mochaMauve;
      size = 32;
    };
    packages = with pkgs; [ hyprcursor ];
  };
}
