/// @desc Darw Logo

if (alt_fade == false) {
	draw_sprite_ext(spr_logo, 0, x, y, 1, 1, 0, -1, alpha);
} else {
	draw_sprite_ext(spr_logo, 0, x, y, 1, 1, 0, -1, 1);
	draw_sprite_ext(spr_logo, 1, x, y, 1, 1, 0, -1, alpha);
}