{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hypridle
  ];
  services.hypridle = {
    enable = true;
    package = pkgs.hypridle;
    importantPrefixes = [
      "$"
    ];
    settings = {
      general = {
        ignore_dbus_inhibit = false;
        ignore_systemd_inhibit = false;
        lock_cmd = "hyprlock";
        unlock_cmd = "notify-send 'Welcome back!'";
        after_sleep_cmd = "notify-send 'Welcome back!'"; 
        before_sleep_cmd = "notify-send 'Zzz'";
      };

      listener = [
      # You can add as many listeners as you please.
      # Omitting on-timeout or on-resume (or leaving them empty) will make those events ignored.
        {
          timeout = ""; # seconds
          on-timeout = "hyprlock";
        }
        {
          timeout = ""; # seconds
          on-timeout = "notify-send 'Bye!'";
          on-resume = "notify-send 'Welcome back!'";
        }
      ];
    };
  };
}
