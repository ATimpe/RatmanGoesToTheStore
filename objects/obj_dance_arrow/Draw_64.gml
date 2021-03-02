/// @desc Draw Arrow

switch (arrow_dir) {
	case "left":
		draw_sprite(spr_dance_left, 0, x, y);
		break;
		
	case "down":
		draw_sprite(spr_dance_down, 0, x, y);
		break;
		
	case "up":
		draw_sprite(spr_dance_up, 0, x, y);
		break;
		
	case "right":
		draw_sprite(spr_dance_right, 0, x, y);
		break;
		
	case "spc":
		draw_sprite(spr_dance_spc, 0, x, y);
		break;

}