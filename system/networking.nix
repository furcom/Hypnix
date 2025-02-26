{ inputs, config, pkgs, ... }:

{
  networking = {
    hostName = "hypnix"; # Define your hostname.
    networkmanager = {
      enable = true;
      logLevel = "ERR";
      dhcp = "internal";
      wifi = {
        backend = "iwd";
        powersave = false;
      };
    };
    wireless = {
      iwd = {
        enable = true;
        settings = {
          #AutoConnect = true;
          IPv6.Enabled = false;
        };
        package = pkgs.iwd;
      };
    };

  };

  system.activationScripts = {
    rfkillUnblockWlan = {
      text = ''
        rfkill unblock wlan
      '';
      deps = [];
    };
  };


  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # networking.firewall.enable = false;
}
