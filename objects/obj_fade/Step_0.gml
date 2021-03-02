/// @desc Animate

if (mus_fade == true) {
	fade_mus();
	mus_fade = false;
}

center_x1 += 9;
center_y1 += 9;
center_x2 -= 9;
center_y2 -= 9;

if (fade_state == 0 && (center_y1 > 180 || center_y2 < 180)) {
	fade_state = 1;
	center_x1 = 0;
	center_y1 = 0;
	center_x2 = 640;
	center_y2 = 360;
	room_goto(target);
}

if (fade_state == 1 && (center_y1 > 180 || center_y2 < 180))
	instance_destroy();