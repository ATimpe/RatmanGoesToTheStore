/// @desc Draw Fade

draw_set_color(c_black);

if (fade_state == 0) {

	draw_rectangle(0, 0, center_x1, 360, false);

	draw_rectangle(640, 0, center_x2, 360, false);

	draw_rectangle(0, 0, 640, center_y1, false);
	
	draw_rectangle(0, 360, 640, center_y2, false);
	
}

if (fade_state == 1) {
	
	draw_rectangle(center_x1, center_y1, center_x2, center_y2, false);
	
}