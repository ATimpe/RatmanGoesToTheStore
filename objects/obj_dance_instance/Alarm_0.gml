/// @desc Left Spawn

with (obj_dance_target) {
	if (target_dir == "left") {
		instance_create_layer(x, y + 320, layer, obj_dance_arrow)
		with (other) {
			arrow_dir = "left";
		}
	}
}