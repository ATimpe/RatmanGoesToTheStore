/// @description Insert description here
// You can write your code in this editor

if (bar[current_index] == -1 && alarm_get(0) == -1 && alarm_get(1) == -1 && alarm_get(2) == -1 && alarm_get(3) == -1 && alarm_get(4) == -1)
	instance_destroy();

if (bar[current_index] == -1)
	exit;

loop = true; // begins loop

current_timer = (bar[current_index] - 1) * steps_per_bar 
	+ (beat[current_index] - 1) * steps_per_bar * 1/4
	+ (div_beat[current_index] - 1) * steps_per_bar * 1/16
	+ (tick[current_index] - 1) * steps_per_bar * 1/400
	- (total_steps + total_steps_100000000 * 100000000);
	
total_steps++;
if (total_steps >= 100000000) {
	total_steps_100000000++;
	total_steps -= 100000000;
}


if (dir[current_index] == "Left" && alarm_get(0) == -1 && current_timer != 0)
	alarm_set(0, current_timer);
else if (dir[current_index] == "Left" && current_timer == 0 && alarm_get(0) == -1)
	event_perform(ev_alarm, 0);
else if (dir[current_index] == "Left" && alarm_get(0) != -1)
	exit;
		
if (dir[current_index] == "Down" && alarm_get(1) == -1) 
	alarm_set(1, current_timer);
else if (dir[current_index] == "Down" && current_timer == 0 && alarm_get(1) == -1)
	event_perform(ev_alarm, 1);
else if (dir[current_index] == "Down" && alarm_get(1) != -1)
	exit;
		
if (dir[current_index] == "Up" && alarm_get(2) == -1) 
	alarm_set(2, current_timer);
else if (dir[current_index] == "Up" && current_timer == 0 && alarm_get(2) == -1)
	event_perform(ev_alarm, 2);
else if (dir[current_index] == "Up" && alarm_get(2) != -1)
	exit;
		
if (dir[current_index] == "Right" && alarm_get(3) == -1) 
	alarm_set(3, current_timer);
else if (dir[current_index] == "Right" && current_timer == 0 && alarm_get(3) == -1)
	event_perform(ev_alarm, 3);
else if (dir[current_index] == "Right" && alarm_get(3) != -1)
	exit;
		
if (dir[current_index] == "Spc" && alarm_get(4) == -1) 
	alarm_set(4, current_timer);
else if (dir[current_index] == "Spc" && current_timer == 0 && alarm_get(4) == -1)
	event_perform(ev_alarm, 4);
else if (dir[current_index] == "Spc" && alarm_get(4) != -1)
	exit;
	
current_index++;