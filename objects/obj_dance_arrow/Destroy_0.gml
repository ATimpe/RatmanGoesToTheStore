/// @desc Display score

instance_create_layer(x + 20, y + 20, "gui", obj_dance_score);

with (obj_dance_score) {
	if (x == other.x + 20)
		result = other.result;
}