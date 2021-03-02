/// @desc Determine Stetch and Position

stretch_counter += (bpm / 60) / 60; //converts beats per miniute int beats per second, then divides it into 30 since that is ho many step there are in a second. that is multiplied by 2 in order for each bounce to occur every 2 beats.

current_stretch = sprite_get_height(spr_dance_idle) - abs(10 * sin(stretch_counter * pi)); 

yscale = current_stretch / sprite_get_height(spr_dance_idle);

if (stretch_counter >= 1) { //keeps the variable from becoming too large without effecting the equation
	stretch_counter -= 1;
}


head_y_pos = head_y + (abs(10 * sin(stretch_counter * pi)));//head position