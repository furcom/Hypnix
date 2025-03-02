{ pkgs, ...  }:

{
  boot = {

    consoleLogLevel = 0;
 
    loader = {
      systemd-boot = {
        enable = true;
        editor = false;
        consoleMode = "keep";
        configurationLimit = 100;
        edk2-uefi-shell.enable = false;
        memtest86.enable = false;
        netbootxyz.enable = false;
        rebootForBitlocker = false;
        windows = {};
      };
      efi.canTouchEfiVariables = true;
      timeout = 1;
    };

    initrd = {
      luks = { devices.root.device = "/dev/nvme1n1p3"; };
      systemd = { enable = true; dbus.enable = true; };
      verbose = false;
    };

    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "loglevel=3"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
    ];

    plymouth = {
      enable = true;
      theme = "owl";
      themePackages = with pkgs; [ (adi1090x-plymouth-themes.override { selected_themes = [ "owl" ]; }) ];
      logo = pkgs.fetchurl { url = "https://nixos.org/logo/nixos-hires.png"; sha256 = "1ivzgd7iz0i06y36p8m5w48fd8pjqwxhdaavc0pxs7w1g7mcy5si"; }; #ONLY PNG!
    };
 
  };
}
