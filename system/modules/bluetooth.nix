{ pkgs, ... }:
{
  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = false;
      package = pkgs.bluez;
      hsphfpd.enable = false; # <-- Disable when using Wireplumber
      settings = {
        General = {
          Name = "furcom-Laptop";
          Class = "0x3E010C";
          ControllerMode = "dual";
          MultiProfile = "multiple";
          FastConnectable = true;
          Privacy = "device";
          JustWorksRepairing = "confirm";
          RefreshDiscovery = true;
          SecureConnections = "only";
          Experimental = true;
          AutoEnable = true;
          DiscoverableTimeout = 60;
          PairableTimeout = 60;
        };
      };
    };
  };

  environment.systemPackages = with pkgs; [ overskride ];
}
