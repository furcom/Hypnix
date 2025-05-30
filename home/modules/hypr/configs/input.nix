{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {

      device = {
        name = "epic-mouse-v1";
        sensitivity = -0.5;
      };
      
      gestures = {
        workspace_swipe = false;
        workspace_swipe_fingers = 5;
        workspace_swipe_min_fingers = false;
        workspace_swipe_distance = 300;
        workspace_swipe_touch = false;
        workspace_swipe_invert = false;
        workspace_swipe_touch_invert = false;
        workspace_swipe_min_speed_to_force = 30;
        workspace_swipe_cancel_ratio = 0.5;
        workspace_swipe_create_new = false;
        workspace_swipe_direction_lock = false;
        workspace_swipe_direction_lock_threshold = 10;
        workspace_swipe_forever = false;
        workspace_swipe_use_r = false;
      };
      
      input = {
        accel_profile = "flat";
        emulate_discrete_scroll = 1;
        float_switch_override_focus = 1;
        focus_on_close = 0;
        follow_mouse = 1;
        force_no_accel = false;
        kb_layout = "de";
        kb_variant = ",qwertz";
        kb_model = "";
        kb_options = "";
        kb_rules = "";
        left_handed = false;
        mouse_refocus = true;
        natural_scroll = false;
        numlock_by_default = false;
        off_window_axis_events = 1;
        repeat_rate = 25;
        repeat_delay = 600;
        resolve_binds_by_sym = false;
        scroll_points = "";
        scroll_method = "";
        scroll_button = 0; #0=default
        scroll_button_lock = 0;
        scroll_factor = 1.0;
        sensitivity = 0;
        special_fallthrough = false;
        touchpad = {
          natural_scroll = true;
        };

      };
    };
  };
}
