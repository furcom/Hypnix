{ pkgs, ... }:
{
  networking = {

    hostName = "hypnix";

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

    wg-quick = {
      interfaces = {
        wg0 = {
          autostart = true;
          privateKeyFile = "/home/furcom/.wg/priv_key";
          address = [ "10.20.30.5/32" ];
          dns = [ "10.0.1.1" ];
          peers = [
            {
              publicKey = "kJP+9lWwLjWjY/yEsYunrVfGZnL3i5c3r9E4A/PTLBQ=";
              allowedIPs = [ "0.0.0.0/0" ];
              endpoint = "wg.furcom.dev:51820";
              persistentKeepalive = 30;
            }
          ];
        };
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

  environment.systemPackages = with pkgs; [
    curl
    dnsmasq
    dnsutils
    cifs-utils
    inetutils
    iputils
    nmap
    netcat-gnu
    samba
    tcpdump
    wget
    whois
    wireguard-tools
  ];

  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # networking.firewall.enable = false;
}
