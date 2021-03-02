/// @desc Mouse collision test

if (global.inventory_show || global.menu || global.mouse_mode == "none")
	exit;

// I have to idea why but doing that same exact thing in the object's step function with mouse_check_button_pressed(mb_left) causes an error. I wasted like fuckinh hours on shit that just doesn't work

if (position_meeting(mouse_x, mouse_y, self) && !global.event 
		&& !(global.mouse_mode == "grab" && !can_grab)
		&& !(global.mouse_mode == "look" && !can_look)
		&& !(global.mouse_mode == "talk" && !can_talk)
		&& !(global.mouse_mode == "move" && !can_move)) {
	switch (global.mouse_mode) {
		case "talk":
			event_create(talk_script);
			break;
		
		case "look":
			event_create(look_script);
			break;
			
		case "grab":
			event_create(grab_script);
			break;
		
		case "move":
			warp(move_room, move_fade, move_mus_fade);
			break;
			
		case "item":
			event_create(get_item_script(obj_id));
			break;
			
		case "default":
			switch (default_event) {
				case "talk":
					event_create(talk_script);
					break;
		
				case "look":
					event_create(look_script);
					break;
				
				case "grab":
					event_create(grab_script);
					break;
			
				case "move":
					warp(move_room, move_fade, move_mus_fade);
					break;
			}
		break;
			
	}
}