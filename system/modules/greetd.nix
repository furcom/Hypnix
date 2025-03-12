{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.greetd.greetd ];
  services = {
    greetd = {
      enable = true;
      settings = {
        initial_session = {
          command = "Hyprland";
          user = "furcom";
        };

        default_session = {
          command = "Hyprland";
          user = "furcom";
        };
      };

      vt = 1;

    };
  };
}

