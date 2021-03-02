/// @desc drawing textbox
/*
draw_set_color(c_white);

if (event[page] == "text" || event[page] == "auto") { // only displays textbox if script calls for it
	//draw text
	if (char[page] != "transparent")
		draw_sprite(spr_textbox, 0, x + global.camera_x, y + global.camera_y);

	if (letterCount == 0) {
		draw_set_font(fnt_text);
		event_perform(ev_other, ev_user0);
	}

	if (letterCount < str_len) {
		letterCount += 1;
	}

	textPart = string_copy(text_wrapped, 1, letterCount);
	
	if (char[page] != "transparent") {
		draw_set_font(fnt_name);
		draw_text_ext(x + 40 + global.camera_x, y + 15 + global.camera_y, char[page], 15, 140);
	}
	draw_set_font(fnt_text);
	draw_text_ext(x + 75 + global.camera_x, y + 45 + global.camera_y, textPart, 17, max_width);
}




if (event[page] == "bg_change") { // background change
	if (changing_bg == false) {
		// okay like gamemaker, did you really have to make fading in a background so hard? i had to gosh darn
		// go through all these hoops just to get this shit to work. probably was a simpler solution but i'm fucking dumb lol
		
		
		
		bg_new = layer_create(99);
		bg_id = layer_background_create(bg_new, asset_get_index(event_str[page]));
		layer_background_alpha(bg_id, 0);
		changing_bg = true;
		alpha = 0;
	}
	if (changing_bg == true) {
		layer_background_alpha(bg_id, alpha);
		alpha += 1/60;
	}
	if (changing_bg == true && alpha >= 1) {
		layer_background_destroy(bg_id);
		alpha = 0;
		layer_background_sprite(layer_background_get_id(global.bg_layer), asset_get_index(event_str[page]));
		changing_bg = false;
		next_page();
	}
	

}

if (event[page] == "audioplay" && !playing_snd) {
	alarm_set(1, audio_sound_length(asset_get_index(event_str[page])) * 30);
	audio_play_sound(asset_get_index(event_str[page]), 0, false);
	playing_snd = true;
}
*/