{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hyprpaper
  ];
  services.hyprpaper = {
    enable = true;
    package = pkgs.hyprpaper;
    settings = {
      preload = [ "~/.cache/hypr_wallpaper" ];
      splash = false;
      ipc = "on";
      # Monitor 1
      wallpaper = [ ", ~/.cache/hypr_wallpaper" ];
    };
  };
}
