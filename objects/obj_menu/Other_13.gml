/// @desc Menu State 4 - Exit

instance_destroy(obj_menu_button);

with (instance_create_layer(x_offset, y_offset, layer, obj_menu_button)) {
	menu_button_id = "yes";
	sprite_index = spr_menu_yes;
}

with (instance_create_layer(x_offset, y_offset + 80, layer, obj_menu_button)) {
	menu_button_id = "no";
	sprite_index = spr_menu_no;
}

menu_state = 4;