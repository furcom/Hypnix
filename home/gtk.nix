{ inputs, config, pkgs, lib, ... }:

{
  gtk = {
    enable = true;
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 32;
    };
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
    iconTheme = {
      name = "Material-Black-Blueberry-Numix-FLAT";
      package = pkgs.material-black-colors;
    };
    #gtk3.extraConfig.Settings = ''gtk-application-prefer-dark-theme = 1'';
    #gtk4.extraConfig.Settings = ''gtk-application-prefer-dark-theme = 1'';
  };
}
