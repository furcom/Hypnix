{ pkgs, ... }:
{
  networking = {

    firewall = {
      enable = true;
      pingLimit = "--limit 1/minute --limit-burst 5";
      allowPing = true;
      extraPackages = with pkgs; [
        ipset
        iproute2
      ];
      extraCommands = ''
        ip route add 224.0.0.0/4 dev wg0
      '';
    };

    hostName = "hypnix";

    networkmanager = {
      enable = true;
      logLevel = "ERR";
      dhcp = "internal";
      wifi = {
        backend = "iwd";
        powersave = true;
      };
    };

    wireless = {
      iwd = {
        enable = true;
        settings = {
          IPv6.Enabled = false;
        };
        package = pkgs.iwd;
      };
    };

    wg-quick = {
      interfaces = {
        wg0 = {
          autostart = true;
          privateKeyFile = "/home/furcom/.secrets/wg0_priv_key";
          address = [ "10.20.30.5/32" ];
          dns = [ "10.0.0.254" ];
          peers = [
            {
              publicKey = "kJP+9lWwLjWjY/yEsYunrVfGZnL3i5c3r9E4A/PTLBQ=";
              allowedIPs = [ "0.0.0.0/0" ];
              endpoint = "10.0.0.254:51820";
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
}
