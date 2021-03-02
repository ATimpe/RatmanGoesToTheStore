/// @desc Menu State 1 - Main

instance_destroy(obj_menu_button);

with (instance_create_layer(x_offset, y_offset, layer, obj_menu_button)) {
	menu_button_id = "resume";
	sprite_index = spr_menu_resume;
}

with (instance_create_layer(x_offset, y_offset + 80, layer, obj_menu_button)) {
	menu_button_id = "save";
	sprite_index = spr_menu_save;
}

with (instance_create_layer(x_offset, y_offset + 160, layer, obj_menu_button)) {
	menu_button_id = "options";
	sprite_index = spr_menu_options;
}

with (instance_create_layer(x_offset, y_offset + 240, layer, obj_menu_button)) {
	menu_button_id = "exit";
	sprite_index = spr_menu_exit;
}

menu_state = 1;
global.menu = true;