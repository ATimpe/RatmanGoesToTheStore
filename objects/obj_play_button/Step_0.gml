/// @desc

if (on == true) {
	if (position_meeting(mouse_x, mouse_y, other) && mouse_check_button(mb_left)) {
		room_goto(rm_file_select);
	}
}