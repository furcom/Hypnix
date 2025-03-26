{ pkgs, ... }:
{
  services.ssh-agent = {
    enable = true;
  };
  programs.ssh = {
    enable = true;
    package = pkgs.openssh;
    extraOptionOverrides = {};
    addKeysToAgent = "yes";
    forwardAgent = true;
    compression = false;
    serverAliveInterval = 0;
    hashKnownHosts = false;
    userKnownHostsFile = "~/.ssh/known_hosts";
    controlMaster = "no";
    controlPath = "~/.ssh/master-%r@%n:%p";
    controlPersist = "no";
    serverAliveCountMax = 3;
    includes = [];
    matchBlocks = {
      ansible = {
        user = "root";
        hostname = "10.0.1.70";
        port = 22;
        identityFile = "~/.ssh/id_ed25519";
      };
      checkmk = {
        user = "root";
        hostname = "10.0.1.60";
        port = 22;
        identityFile = "~/.ssh/id_ed25519";
      };
      docker = {
        user = "root";
        hostname = "10.0.1.50";
        port = 22;
        identityFile = "~/.ssh/id_ed25519";
      };
      homeassistant = {
        user = "root";
        hostname = "10.0.1.40";
        port = 22;
        identityFile = "~/.ssh/id_ed25519";
      };
      mail = {
        user = "root";
        hostname = "mail.furcom.dev";
        port = 22;
        identityFile = "~/.ssh/id_ed25519";
      };
      opnsense = {
        user = "furcom";
        hostname = "10.0.1.1";
        port = 22;
        identityFile = "~/.ssh/id_ed25519";
      };
      omv = {
        user = "root";
        hostname = "10.0.1.30";
        port = 22;
        identityFile = "~/.ssh/id_ed25519";
      };
      pihole = {
        user = "root";
        hostname = "10.0.1.20";
        port = 22;
        identityFile = "~/.ssh/id_ed25519";
      };
      pve = {
        user = "root";
        hostname = "10.0.1.10";
        port = 22;
        identityFile = "~/.ssh/id_ed25519";
      };
      pbs = {
        user = "root";
        hostname = "10.0.1.11";
        port = 22;
        identityFile = "~/.ssh/id_ed25519";
      };
      u342031 = {
        user = "u342031";
        hostname = "u342031.your-storagebox.de";
        port = 23;
        identityFile = "~/.ssh/id_ed25519";
      };
    };
  };
}
