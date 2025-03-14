{ pkgs, ... }:

{
  services.fusuma = {
    enable = false;
    package = pkgs.fusuma;
    extraPackages = with pkgs; [xdotool coreutils xorg.xprop];
    settings = {

      swipe = {
        "3" = {
          "up" = {
            command = "hyprctl dispatch fullscreen 1";
            threshold = "0.5";
          };
          "down" = {
            command = "hyprctl dispatch fullscreen 1";
            threshold = "0.5";
          };
        };
        "4" = {
          "up" = {
            command = "hyprctl dispatch fullscreen 0";
            threshold = "0.5";
          };
          "down" = {
            command = "hyprctl dispatch fullscreen 0";
            threshold = "0.5";
          };
          "left" = {
            command = "hyprctl dispatch movetoworkspace -1 && hyprctl dispatch workspace +1";
            threshold = "0.5";
          };
          "right" = {
            command = "hyprctl dispatch movetoworkspace +1 && hyprctl dispatch workspace -1";
            threshold = "0.5";
          };
        };
      };
      
      "hold" = {
        "3" = {
          command = "hyprctl dispatch centerwindow active";
        };
        "4" = {
          command = "hyprctl dispatch togglefloating active";
        };
      };

    };
  };
}
