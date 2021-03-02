/// @desc Change Current Variation

audio_sound_gain(variation[current_var], 0, 1000);
audio_sound_gain(variation[next_var], 1, 1000);

current_var = next_var;