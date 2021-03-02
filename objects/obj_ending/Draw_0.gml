/// @desc Draw Background

draw_sprite_ext(bg_ratman_drive_4, 0, room_width / 2, city_bg_4_y, 1, city_bg_4_yscale, 0, -1, 1);

draw_sprite(bg_ratman_drive_3, 0, city_bg_3_x, 0);

if (city_bg_3_x < 0)
	draw_sprite(bg_ratman_drive_3, 0, city_bg_3_x_alt, 0);

draw_sprite(bg_ratman_drive_2, 0, city_bg_2_x, 0);

if (city_bg_2_x < 0)
	draw_sprite(bg_ratman_drive_2, 0, city_bg_2_x_alt, 0);
	
draw_sprite(bg_ratman_drive_1, 0, 0, city_bg_1_y);