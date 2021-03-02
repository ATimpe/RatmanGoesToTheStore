/// @desc Scroll Through mouse states

if (global.mouse_mode == "none")
	exit;

if (mouse_check_button_pressed(mb_right) && !global.event && !global.battle) {
	mouse_index += 1;
	if (mouse_index > 4 && global.inventory_grab_index == -1) {
		mouse_index -= 5;
	}
	if (mouse_index > 5 && global.inventory_grab_index != -1) {
		mouse_index -= 6;
	}
	
	switch (mouse_index) {
	
		case 0:
			set_mouse_state("default");
			break;
			
		case 1:
			set_mouse_state("grab");
			break;
			
		case 2:
			set_mouse_state("look");
			break;
			
		case 3:
			set_mouse_state("talk");
			break;
			
		case 4:
			set_mouse_state("move");
			break;
			
		case 5:
			set_mouse_state("item");
			break;
			
	}
	
	
	
}

switch (global.mouse_mode) {
	case "default":
		current_spr = spr_mouse_default;
		break;
			
	case "grab":
		current_spr = spr_mouse_grab;
		break;
		
	case "talk":
		current_spr = spr_mouse_talk;
		break;
	
	case "look":
		current_spr = spr_mouse_look;
		break;
		
	case "move":
		current_spr = spr_mouse_move;
		break;
			
	case "item":
		current_spr = inventory_get_sprite(global.inventory[global.inventory_grab_index]);
		break;
			
	case "gun":
		current_spr = spr_mouse_gun;
		break;
}

if (animated) {
	ani_index += ani_speed;
	if (ani_index > sprite_get_number(current_spr))
		ani_index -= sprite_get_number(current_spr);
} else
	ani_index = 0;


flavor_text_x = mouse_x + global.camera_x;
flavor_text_limit_right = room_width - string_width(flavor_text) / 2 - 20;
flavor_text_limit_left = string_width(flavor_text) / 2 + 20;

if (flavor_text_x > flavor_text_limit_right)
	flavor_text_x = flavor_text_limit_right;

if (flavor_text_x < flavor_text_limit_left)
	flavor_text_x = flavor_text_limit_left;

if (mouse_y - 50 - flavor_text_limit_top < 0)
	flavor_text_y_dir = -1;
else
	flavor_text_y_dir = 1;