/// @desc Changing Varibales

city_bg_2_x -= 8;
city_bg_3_x -= 4;

city_bg_2_x_alt = city_bg_2_x + 640;
city_bg_3_x_alt = city_bg_3_x + 640;

if (city_bg_2_x_alt < 0) {
	city_bg_2_x = city_bg_2_x_alt;
	city_bg_2_x_alt += 640;
}

if (city_bg_3_x_alt < 0) {
	city_bg_3_x = city_bg_3_x_alt;
	city_bg_3_x_alt += 640;
}

city_bg_4_y += 1/4 * sin(city_bg_4_yscale_var * pi);
city_bg_4_yscale += cos(city_bg_4_yscale_var * pi) / room_height;

city_bg_4_yscale_var += 1/60;

if (city_bg_4_yscale_var >= 2)
	city_bg_4_yscale_var -= 2;
	
city_bg_1_y =  10 * sin(city_bg_1_y_var * pi) + 10;

city_bg_1_y_var += 1/120;

if (city_bg_1_y_var >= 2)
	city_bg_1_y_var -= 2;