{ pkgs, ... }:
{
  services = {
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
