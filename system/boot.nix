{ inputs, config, pkgs, ...  }:

{
  boot = {

    consoleLogLevel = 0;
 
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 1;
    };

    initrd = {
      luks.devices.root.device = "/dev/nvme1n1p3";
      systemd.enable = true;
      verbose = false;
      systemd.dbus.enable = true;
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
    };
 
  };
}
