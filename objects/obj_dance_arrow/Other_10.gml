/// @desc Acurate Hit dectector


if (y > obj_dance_target.y - 5 && y < obj_dance_target.y + 5) { // PERFECT
	result = "perfect";
} else if (y < obj_dance_target.y - 5 || y > obj_dance_target.y + 5) { // Great
	result = "great";
} else if (y < obj_dance_target.y - 10 || y > obj_dance_target.y + 10) { // Good
	result = "good";
} else if (y < obj_dance_target.y - 20 || y > obj_dance_target.y + 20) { // Acceptable
	result = "acceptable";
}

instance_destroy();