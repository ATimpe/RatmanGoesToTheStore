/// @desc Next Page

if (read_script == true) {
	event_perform(ev_other, ev_user1);
	read_script = false;
}



if ((keyboard_check_pressed(vk_space)) && event[page] == "text") {
	//only increace page if there is pages to go to and if the player has control
	
	//skips to end of text
	if (letterCount < str_len) {
		letterCount = str_len;
	} else {
		next_page();
	}
}

if (event[page] == "start") {
	next_page();
}

