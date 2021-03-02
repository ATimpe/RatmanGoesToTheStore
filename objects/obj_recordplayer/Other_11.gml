/// @desc Play Track /w variations

for (i = 0; i < num_variation; i++) {
	audio_play_sound(variation[i], 0, true);
	if (i != 0)
		audio_sound_gain(variation[i], 0, 0);
}