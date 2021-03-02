/// @desc Reading in script

left_x = 0;
down_x = 0;
up_x = 0;
right_x = 0;
spc_x = 0;

loop = false;
total_steps = 0;
total_steps_100000000 = 0;
current_index = 0;

total_arrows = 0;

steps_per_bar = (60 / (80 / 4) * 30);


dance_file = file_text_open_read(working_directory + "dance.txt");

for (i = 0; !file_text_eof(dance_file); i++) {	
	bar[i] = file_text_read_real(dance_file);
	
	if (bar[i] == -1)
		break;
	
	beat[i] = file_text_read_real(dance_file);
	div_beat[i] = file_text_read_real(dance_file);
	tick[i] = file_text_read_real(dance_file);
	file_text_readln(dance_file);
	dir[i] = file_text_read_string(dance_file);
	file_text_readln(dance_file);
	file_text_readln(dance_file);
	total_arrows++;
}

file_text_close(dance_file);