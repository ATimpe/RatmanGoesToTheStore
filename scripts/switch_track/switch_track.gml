/// @desc switch_track(next_track, fade, has_variation, num_variation)
/// @arg next_tack
/// @arg fae
/// @arg has_variation
/// @arg num_variation
function switch_track(argument0, argument1, argument2, argument3) {

	if (argument2) {
		if (argument1) {
			for (i = 0; i < argument3; i++)
				audio_sound_gain(global.current_track[i], 0, 1000);
		} else {
			for (i = 0; i < argument3; i++)
				audio_stop_sound(global.current_track[i]);
		}
	} else {
		if (argument1)
			audio_sound_gain(global.current_track[0], 0, 1000);
		else
			audio_stop_sound(global.current_track[0]);
	}

	set_track(argument0, argument2, argument3);


}
