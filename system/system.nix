{ ... }:
{
  imports = [
    ./hardware/hardware.nix
    ./modules/modules.nix
    ./programs/programs.nix
    ./services/services.nix
  ];
  system.stateVersion = "24.11";
}
