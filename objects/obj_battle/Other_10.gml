/// @desc Battle State 1 - Main

instance_destroy(obj_battle_button);

with (instance_create_layer(x_offset, y_offset, layer, obj_battle_button)) {
	battle_button_id = "gun";
	sprite_index = spr_battle_fight;
}

with (instance_create_layer(x_offset + 160, y_offset, layer, obj_battle_button)) {
	battle_button_id = "special";
	sprite_index = spr_battle_special;
}

with (instance_create_layer(x_offset + 320, y_offset, layer, obj_battle_button)) {
	battle_button_id = "leave";
	sprite_index = spr_battle_leave;
}

battle_state = 1;