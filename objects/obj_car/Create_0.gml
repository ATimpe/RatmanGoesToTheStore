/// @desc Initialize variables

dir = 0;
bpm = 181;
bounce = false;
drive = false;

x_target = 0;
time_to_x = 318;

draw_title = false;

x_speed = (x_target - x) / time_to_x;

audio_play_sound(mus_opening, 0, false);

alarm_set(0, 594);