{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.dbus-broker ];
  services = {
    dbus = {
      enable = true;
      packages = [ pkgs.dbus-broker];
      implementation = "broker";
      apparmor = "disabled";
    };
  };
}
