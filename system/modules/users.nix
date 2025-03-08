{ pkgs, ... }:
{
  users.users.furcom = {
    isNormalUser = true;
    description = "furcom";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [
    ];
  };
}
