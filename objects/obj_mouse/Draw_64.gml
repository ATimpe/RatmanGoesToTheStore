/// @desc Draw Mouse Sprite

if (global.event || global.mouse_mode == "none")
	exit;
	
// draw_text(0, 0, global.mouse_mode);
	
if (animated) { // DRAW FLAVOR TEXT ABOVE MOUSE
	
	draw_set_color(c_white);
	draw_set_font(fnt_flavor_text);
	
	switch (flavor_text_stage) {
	
		case -1:
			flavor_text_stage = 0;
			break;
		
		case 0:
			draw_sprite(spr_mouse_text_draw_mid, 0, flavor_text_x, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir);
			draw_sprite(spr_mouse_text_draw_left, 0, flavor_text_x - 10, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir);
			draw_sprite(spr_mouse_text_draw_right, 0, flavor_text_x + 10, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir);
			flavor_text_y -= flavor_text_spd;
			if (flavor_text_y < -50) {
				flavor_text_y = -50;
				flavor_text_stage = 1;
				
			}
			break;
			
		case 1:
			draw_sprite_ext(spr_mouse_text_draw_mid, 0, flavor_text_x, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir, flavor_text_mid_scale, 1, 0, -1, 1);
			draw_sprite(spr_mouse_text_draw_left, 0, flavor_text_x - 10 + flavor_text_left_x, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir);
			draw_sprite(spr_mouse_text_draw_right, 0, flavor_text_x + 10 + flavor_text_right_x, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir);
			
			if (string_width(flavor_text) + flavor_text_spd < flavor_text_mid_scale * 10) { 
				// WHEN SWITCHING BETWEEN A LARGER TEXT TO A SMALLER ONE, THE LARGER ONE'S SIZE WOULD REMAIN. THIS AJUSTS IT SO THAT THE SIZE WILL ALWAYS BE CORRECT BEFORE MOVING TO STAGE 2
				flavor_text_left_x += flavor_text_spd;
				flavor_text_right_x -= flavor_text_spd;
				flavor_text_mid_scale = (flavor_text_right_x - flavor_text_left_x) / 10;
				exit;
			}
			
			flavor_text_left_x -= flavor_text_spd;
			flavor_text_right_x += flavor_text_spd;
			flavor_text_mid_scale = (flavor_text_right_x - flavor_text_left_x) / 10;
			
			if (string_width(flavor_text) < flavor_text_mid_scale * 10) {
				flavor_text_left_x = string_width(flavor_text) / -2;
				flavor_text_right_x = string_width(flavor_text) / 2;
				flavor_text_mid_scale = (flavor_text_right_x - flavor_text_left_x) / 10;
				flavor_text_stage = 2;
			}
			break;
			
		case 2:
			if (flavor_text_left_x != string_width(flavor_text) / -2
				|| flavor_text_right_x != string_width(flavor_text) / 2
				|| flavor_text_mid_scale != (flavor_text_right_x - flavor_text_left_x) / 10) { 
				// IF THE DIMENTIONS ARE WRONG IN STAGE 2 IT WILL GO BACK TO STAGE 1
				flavor_text_stage = 1;
				exit;
			}
			draw_sprite_ext(spr_mouse_text_draw_mid, 0, flavor_text_x, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir, flavor_text_mid_scale, 1, 0, -1, 1);
			draw_sprite(spr_mouse_text_draw_left, 0, flavor_text_x - 10 + flavor_text_left_x, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir);
			draw_sprite(spr_mouse_text_draw_right, 0, flavor_text_x + 10 + flavor_text_right_x, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir);
			draw_text(flavor_text_x - 4 + flavor_text_left_x + 4, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir - 12, flavor_text);
			break;
	}
} else {
	
	
	
	
	
	
	
	
	// TEXT BOX GO DOWN
	
	switch (flavor_text_stage) {
		case 0:
			draw_sprite(spr_mouse_text_draw_mid, 0, flavor_text_x, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir);
			draw_sprite(spr_mouse_text_draw_left, 0, flavor_text_x - 10, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir);
			draw_sprite(spr_mouse_text_draw_right, 0, flavor_text_x + 10, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir);
			flavor_text_y += flavor_text_spd;
			if (flavor_text_y > 0) {
				flavor_text_y = 0;
				flavor_text_stage = -1;
			}
			break;
			
		case 1:
			draw_sprite_ext(spr_mouse_text_draw_mid, 0, flavor_text_x, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir, flavor_text_mid_scale, 1, 0, -1, 1);
			draw_sprite(spr_mouse_text_draw_left, 0, flavor_text_x - 10 + flavor_text_left_x, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir);
			draw_sprite(spr_mouse_text_draw_right, 0, flavor_text_x + 10 + flavor_text_right_x, mouse_y - global.camera_y + flavor_text_y * flavor_text_y_dir);
			flavor_text_left_x += flavor_text_spd;
			flavor_text_right_x -= flavor_text_spd;
			flavor_text_mid_scale = (flavor_text_right_x - flavor_text_left_x) / 10;
			if (flavor_text_mid_scale * 10 < 0) {
				flavor_text_left_x = 0;
				flavor_text_right_x = 0;
				flavor_text_mid_scale = 1;
				flavor_text_stage = 0;
			}
			break;
			
		case 2:
			flavor_text_stage = 1;
			break;
	}
}








if (global.menu || (global.battle && global.mouse_mode != "gun")) {
	draw_sprite(spr_mouse_menu, ani_index, mouse_x - global.camera_x, mouse_y - global.camera_y);
	exit;
}

draw_sprite(current_spr, ani_index, mouse_x - global.camera_x, mouse_y - global.camera_y);