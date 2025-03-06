{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      animations = {

        bezier = [
          "linear, 0.0, 0.0, 1.0, 1.0"
          "bounce, 0.05, 0.9, 0.1, 1.1"
          "easeOutQuint, 0.23, 1, 0.32, 1"
        ];
        animation = [
          "windows, 1, 5, easeOutQuint"
          "windowsIn, 1, 6, easeOutQuint, slide right"
          "windowsOut, 1, 5, easeOutQuint, slide bottom"
          "windowsMove, 1, 5, bounce, slide"
      
          "layers, 1, 5, easeOutQuint"
          "layersIn, 1, 5, easeOutQuint, popin 85%"
          "layersOut, 1, 3, easeOutQuint, fade"
      
          "fade, 1, 2, easeOutQuint"
          "fadeDim, 1, 2, easeOutQuint"
          "fadeShadow, 1, 2, easeOutQuint"
          "fadeSwitch, 1, 2, easeOutQuint"
      
          "workspaces, 1, 5, easeOutQuint"
          "workspacesIn, 1, 5, bounce, slide"
          "workspacesOut, 1, 3, easeOutQuint, slide"
          "specialWorkspaceIn, 1, 5, bounce, slide"
          "specialWorkspaceOut, 1, 3, easeOutQuint, slide"
        ];

      };
    };
  };
}
