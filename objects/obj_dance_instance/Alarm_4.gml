/// @desc Special Spawn

with (obj_dance_target) {
	if (target_dir == "spc") {
		with (instance_create_layer(x, y + 320, layer, obj_dance_arrow)) {
			arrow_dir = "spc";
		}
	}
}