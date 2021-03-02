/// @desc animation

if (bounce == true) {
	y = -abs(sin(dir * pi) * 10);

	dir += 1/60 * (bpm/120);
	if (dir >= 1) {
		dir -= 1;
	}
}

if (drive == true && x != x_target) {
	x += x_speed;
}

if ((x_speed > 0 && x > x_target) || (x_speed < 0 && x < x_target)) {
	x = x_target;
	drive = false;
	time_to_x = 0;
	draw_title = true;
}