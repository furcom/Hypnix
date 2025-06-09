{ pkgs, ... }:
{
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages = with pkgs; [
        vpl-gpu-rt
        libvdpau-va-gl
        intel-media-driver
        intel-compute-runtime
      ];
    };
  };

  environment.systemPackages = with pkgs; [
    brightnessctl
    vulkan-tools
  ];
}
