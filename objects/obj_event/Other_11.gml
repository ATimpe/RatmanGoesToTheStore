/// @desc Read The File

script_id = file_text_open_read(working_directory + script);

if (script_id == -1) { // fail state
	//show_message("error. file not found");
	exit;
}

line_type_count = 0;

for (i = 0; !file_text_eof(script_id); i++) { //while it's still being read
	line_type = file_text_read_string(script_id);
	line_type_count += 1;
		
	switch (line_type) {	
		case "bg_change":
			event[i] = line_type;
			file_text_readln(script_id);
			event_str[i] = file_text_read_string(script_id);
			file_text_readln(script_id);
			break;
			
		case "rm_change":
			
			break;
		
		case "audioplay":
			event[i] = line_type;
			file_text_readln(script_id);
			event_str[i] = file_text_read_string(script_id);
			file_text_readln(script_id);
			break;
		
		case "auto":
			event[i] = line_type;
			event_real[i] = file_text_read_real(script_id);
			char[i] = file_text_readln(script_id);
			text[i] = file_text_readln(script_id);
			break;
			
		default:
			event[i] = "text";
			char[i] = line_type;
			file_text_readln(script_id)
			text[i] = file_text_readln(script_id);
			break;
	}
	file_text_readln(script_id); // skips blank line
}

file_text_close(script_id);