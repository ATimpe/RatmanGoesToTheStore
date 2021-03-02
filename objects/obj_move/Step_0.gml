if (position_meeting(mouse_x, mouse_y, obj_move) && mouse_check_button_pressed(mb_left)) {
	if (global.mouse_mode != "move") {
		set_mouse_state("move");
	} else {
		set_mouse_state("default"); //sets back mouse mode
	}
}

x = global.camera_x + cam_displace_x;
y = global.camera_y + cam_displace_y;