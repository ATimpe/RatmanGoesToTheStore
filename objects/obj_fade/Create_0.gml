/// @desc Set Variables

persistent = true;

center_x1 = 0;
center_x2 = 640;
center_y1 = 0;
center_y2 = 360;

fade_state = 0;

prev_mouse_state = global.mouse_mode;

set_mouse_state("none");

with (obj_mouse) {event_perform(ev_other, ev_user0)}