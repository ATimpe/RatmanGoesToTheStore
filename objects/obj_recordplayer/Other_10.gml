/// @desc Track Changer

if (mus_fade) {
	for (i = 0; i < num_variation; i++)
		audio_sound_gain(global.current_track[i], 0, 1000);
}

else {
	for (i = 0; i < num_variation; i++)
		audio_stop_sound(global.current_track[i]);
}

if (has_variation) {
	global.current_track = get_variation(next_track);
	current_var = 0;
	event_perform(ev_other, ev_user1);
} else 
	global.current_track[0] = next_track;