{ inputs, config, pkgs, lib, ... }:

{
  services = {

    dbus = {
      enable = true;
      packages = [ pkgs.dbus-broker];
      implementation = "broker";
      apparmor = "disabled";
    };

    greetd = {
      enable = true;
      settings = {
        initial_session = { command = "Hyprland"; user = "furcom"; };
        default_session = { command = "Hyprland"; user = "furcom"; };
      };
      vt = 1;
    };

    hypridle.enable = true;

    libinput.enable = true;

    openssh.enable = true;

    power-profiles-daemon.enable = true;

    printing.enable = false;

    upower = {
      enable = true;
      timeLow = 1200;
      timeCritical = 300;
      timeAction = 120;
      percentageLow = 20;
      percentageCritical = 5;
      percentageAction = 2;
      usePercentageForPolicy = true;
      noPollBatteries = false;
      ignoreLid = false;
      enableWattsUpPro = false;
      criticalPowerAction = "PowerOff"; # Options: PowerOff/Hibernate/HybridSleep
    };

    pipewire = {
      enable = true;
      audio.enable = true;
      wireplumber.enable = true;
      systemWide = false; # systemWide enabled not recommended
      pulse.enable = false;
      jack.enable = true;
      alsa = { enable = true; support32Bit = true; };
    };

    pulseaudio.enable = false;

    xserver = {
      enable = true;
      xkb = {
        options = "grp:alt_shift_toggle, caps:swapescape";
        layout = "de";
        model = "pc104";
      };
      xautolock = {
        enable = false;
        time = 15; # Lock after X minutes
        notify = 10; # Notify in X seconds that PC will be locked
        notifier = "${pkgs.libnotify}/bin/notify-send 'Locking in 10 seconds'";
        locker = "${pkgs.hyprlock}/bin/hyprlock";
      };
      displayManager = {
        gdm.enable = false;
      };
      desktopManager.gnome.enable = false;
    };

  };
}
