/// @desc Menu State 2 - Save

instance_destroy(obj_menu_button);

with (instance_create_layer(x_offset, y_offset, layer, obj_menu_button)) {
	menu_button_id = "save1";
	sprite_index = spr_menu_save;
}

with (instance_create_layer(x_offset, y_offset + 80, layer, obj_menu_button)) {
	menu_button_id = "save2";
	sprite_index = spr_menu_save;
}

with (instance_create_layer(x_offset, y_offset + 160, layer, obj_menu_button)) {
	menu_button_id = "save3";
	sprite_index = spr_menu_save;
}

with (instance_create_layer(x_offset, y_offset + 240, layer, obj_menu_button)) {
	menu_button_id = "save4";
	sprite_index = spr_menu_save;
}

menu_state = 2;