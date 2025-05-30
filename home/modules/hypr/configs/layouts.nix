{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {

      dwindle = {
        default_split_ratio = 1.0;
        force_split = 2;
        permanent_direction_override = false;
        pseudotile = true;
        preserve_split = true;
        smart_resizing = true;
        smart_split = false;
        special_scale_factor = 1;
        split_width_multiplier = 1.0;
        use_active_for_splits = true;
      };
      
      master = {
        allow_small_split = false;
        drop_at_cursor = true;
        inherit_fullscreen = true;
        mfact = 0.50;
        new_on_top = true;
        new_on_active = "none";
        new_status = "slave";
        orientation = "left";
        smart_resizing = true;
        special_scale_factor = 1;
      };

    };
  };
}
