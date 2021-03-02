if (keyboard_check_pressed(vk_escape) && !global.menu && !global.event && global.can_pause) {
	event_perform(ev_other, ev_user0);
	exit;
}

if (keyboard_check_pressed(vk_escape) && global.menu) {
	
	if (menu_state == 1) {
		event_perform(ev_other, ev_user15);
		exit;
	}
	else {
		event_perform(ev_other, ev_user0);
		exit;
	}
}

if (!global.menu)
	exit;
	
	
	
	
	
	
	
