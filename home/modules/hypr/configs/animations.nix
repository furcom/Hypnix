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
          "windows, 1, 6, bounce"
          "windowsIn, 1, 6, bounce, slide bottom"
          "windowsOut, 1, 6, bounce, slide bottom"
          "windowsMove, 1, 6, bounce, slide"
      
          "layers, 1, 6, bounce"
          "layersIn, 1, 6, bounce, popin 85%"
          "layersOut, 1, 6, bounce, popin 85%"
      
          "fade, 1, 2, easeOutQuint"
          "fadeDim, 1, 2, easeOutQuint"
          "fadeShadow, 1, 2, easeOutQuint"
          "fadeSwitch, 1, 2, easeOutQuint"
      
          "workspaces, 1, 6, bounce"
          "workspacesIn, 1, 6, bounce, slide"
          "workspacesOut, 1, 6, bounce, slide"

          "specialWorkspaceIn, 1, 6, bounce, slidefadevert"
          "specialWorkspaceOut, 1, 6, bounce, slidefadevert"
        ];

      };
    };
  };
}
