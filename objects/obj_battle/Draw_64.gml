/// @desc Draw Battle

draw_sprite(fg_battle_overlay_top, 0, 0, top_bg_y);
draw_sprite(fg_battle_overlay_bottom, 0, 0, bottom_bg_y);

// TEXT DRAW

draw_set_color(c_yellow);
draw_set_font(fnt_battle_text);

while (battle_text_x < 640 + string_x_len) {
	draw_text_transformed(battle_text_x, battle_text_y + 308 + bottom_bg_y, str_battle, 1, 1, arctan(-1/90));
	battle_text_x += string_x_len;
	battle_text_y += string_y_len;
}

while (battle_text_x > -string_x_len && battle_text_y > -string_y_len) {
	battle_text_x -= string_x_len;
	battle_text_y -= string_y_len;
}

battle_text_x -= string_x_len / 120;
battle_text_y -= string_y_len / 120;

if (battle_text_x < -string_x_len * 2 && battle_text_y < -string_y_len * 2) {
	battle_text_x += string_x_len;
	battle_text_y += string_y_len;
}




switch (battle_gui_state) {
	case 0:
		bottom_bg_y -= 30;
		top_bg_y += 30;
		if (bottom_bg_y < 0 && top_bg_y > 0)
			battle_gui_state = 1;
		break;
	
	case 1:
		bottom_bg_y += 5;
		top_bg_y -= 5;
		if (bottom_bg_y > 0 && top_bg_y < 0) {
			bottom_bg_y = 0;
			top_bg_y = 0;
			battle_gui_state = 2;
		}
		break;
}