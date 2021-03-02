/// @desc set_variation(variation)
/// @arg variation
function set_variation(argument0) {

	next_var = argument0;

	audio_sound_gain(global.current_track[global.current_variation], 0, 1000);
	audio_sound_gain(global.current_track[next_var], 1, 1000);

	global.current_variation = next_var;


}
