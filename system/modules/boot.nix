{ pkgs, ...  }:
{
  boot = {

    consoleLogLevel = 0;
 
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot = {
        enable = true;
        editor = false;
        consoleMode = "keep";
        configurationLimit = 50; # Amount of generations diplayed in bootloader
        edk2-uefi-shell.enable = false;
        memtest86.enable = false;
        netbootxyz.enable = false;
        rebootForBitlocker = false;
        windows = {};
      };
      timeout = 1;
    };

    initrd = {
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
      theme = "hud_space";
      font = "${pkgs.nerd-fonts._0xproto}/share/fonts/truetype/NerdFonts/0xProto/0xProtoNerdFontMono-Regular.ttf";
      themePackages = with pkgs; [ (adi1090x-plymouth-themes.override { selected_themes = [ "hud_space" ]; }) ];
      logo = "${pkgs.nixos-icons}/share/icons/hicolor/256x256/apps/nix-snowflake.png"; # ONLY SUPPORTS PNG!
    };
 
  };
  environment.systemPackages = [ pkgs.nixos-icons ];
}
