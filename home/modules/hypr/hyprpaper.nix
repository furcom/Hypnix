{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hyprpaper
  ];
  services.hyprpaper = {
    enable = true;
    package = pkgs.hyprpaper;
    settings = {
      preload = [ "~/.cache/hypnix_wallpaper" ];
      splash = false;
      ipc = "on";
      # Monitor 1
      wallpaper = [ ", ~/.cache/hypnix_wallpaper" ];
    };
  };
}
