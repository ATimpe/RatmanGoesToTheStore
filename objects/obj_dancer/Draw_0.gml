/// @desc Draw and stretch sprites

if (dancer == "ratman") {
	//draw_sprite_stretched(spr_dance_idle, 1, x, y, sprite_get_width(spr_dance_idle), current_stretch);
	draw_sprite_ext(spr_dance_idle, 1, x, y, 1, yscale, 0, -1, 1);
	draw_sprite(spr_dance_ratman, 0, head_x, head_y_pos);
}

