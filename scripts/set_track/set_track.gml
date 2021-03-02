/// @desc set_track(new_track, has_variation, variation_num)
/// @arg new_track
/// @arg has_variation
/// @arg variation_num
function set_track(argument0, argument1, argument2) {

	// variation refers to specific tracks (i.e. ending theme and title screen) where different variants can be played
	// set_track_varition() can also be used to change only the variation seemlessly

	/*
	with (obj_recordplayer) {
		next_track = argument0;
		fade = argument1;
		if (argument2 != false) {
			has_variation = argument2;
			num_variation = argument3
		}
		event_perform(ev_other, ev_user0);
	}
	*/

	if (argument1) {
		global.current_track = get_variation(argument0);
		global.track_variation = argument2;
		global.current_variation = 0;
	
		for (i = 0; i < argument2; i++) {
			audio_play_sound(global.current_track[i], 0, true);
			if (i != 0)
				audio_sound_gain(global.current_track[i], 0, 0);
		}
	} else {
		global.current_track[0] = argument0
		global.track_var = 1;
		audio_play_sound(global.current_track[0], 0, true);
	}



}
