{ ... }:
{
  services = {
    logind = {
      powerKey = "lock";
      powerKeyLongPress = "poweroff";
      extraConfig = "
        # Disable power button shutdown
        HandlePowerKey=ignore
      ";
    };
  };
}
