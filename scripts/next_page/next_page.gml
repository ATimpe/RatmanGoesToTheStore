function next_page() {
	with (obj_event) {
		if (page + 1 < array_length_1d(text)) { //skips to next text
			page += 1;
			letterCount = 0;
		} else {
			instance_destroy();
		}
	}


}
