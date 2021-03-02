/// @desc Movement Up

y -= bps * starting_displacment * (1/4);

if (y + 40 <= obj_dance_target.y) {
	result = "fail";
	instance_destroy();
}

switch (arrow_dir) {
	case "left":
		if ((keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("a"))) && hit)
			event_perform(ev_other, ev_user0);
		break;
		
	case "down":
		if ((keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("s"))) && hit)
			event_perform(ev_other, ev_user0);
		break;
		
	case "up":
		if ((keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("w"))) && hit)
			event_perform(ev_other, ev_user0);
		break;
		
	case "right":
		if ((keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("d"))) && hit)
			event_perform(ev_other, ev_user0);
		break;
		
	case "spc":
		if (keyboard_check_pressed(vk_space) && hit)
			event_perform(ev_other, ev_user0);
		break;

}