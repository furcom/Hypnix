{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      animations = {

        bezier = [
          "linear, 0.0, 0.0, 1.0, 1.0"
          "bounce1, 0.05, 0.9, 0.1, 1.1"
          "bounce2, 0.05, 0.9, 0.1, 1.2"
          "easeOutQuint, 0.23, 1, 0.32, 1"
        ];
        animation = [
          "windows, 1, 8, bounce2"
          "windowsIn, 1, 6, bounce2, gnomed"
          "windowsOut, 1, 8, easeOutQuint, slide bottom"
          "windowsMove, 1, 6, bounce1, gnomed"
      
          "layers, 1, 6, bounce2"
          "layersIn, 1, 6, bounce2, popin 85%"
          "layersOut, 1, 6, bounce2, popin 85%"
      
          "fade, 1, 2, easeOutQuint"
          "fadeDim, 1, 2, easeOutQuint"
          "fadeShadow, 1, 2, easeOutQuint"
          "fadeSwitch, 1, 2, easeOutQuint"
      
          "workspaces, 1, 6, bounce2"
          "workspacesIn, 1, 6, bounce2, slide"
          "workspacesOut, 1, 6, bounce2, slide"

          "specialWorkspaceIn, 1, 6, bounce2, slidefadevert"
          "specialWorkspaceOut, 1, 6, bounce2, slidefadevert"
        ];

      };
    };
  };
}
