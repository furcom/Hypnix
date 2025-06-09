{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "thunderbolt" "nvme" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/e5036bd8-f119-45b1-b5d4-63fe9c67e293";
    fsType = "btrfs";
    options = [ "subvol=@" ];
  };

  boot.initrd.luks.devices."luks-734fb984-e520-4de4-80ca-c273cab08dee".device = "/dev/disk/by-uuid/734fb984-e520-4de4-80ca-c273cab08dee";

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/95B1-9D15";
    fsType = "vfat";
    options = [ "fmask=0077" "dmask=0077" ];
  };

  swapDevices = [ { device = "/dev/disk/by-uuid/d19c1cc6-0daf-46c6-9e49-db85e005f67a"; } ];

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
