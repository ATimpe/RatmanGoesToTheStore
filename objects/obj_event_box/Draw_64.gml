/// @desc Draw Flavor Text

// for the actual drawing code, see obj_mouse...

if (global.inventory_show || global.menu)
	exit;

if (position_meeting(mouse_x, mouse_y, self) && !global.event 
		&& !(global.mouse_mode == "grab" && !can_grab)
		&& !(global.mouse_mode == "look" && !can_look)
		&& !(global.mouse_mode == "talk" && !can_talk)
		&& !(global.mouse_mode == "move" && !can_move)) {
	switch (global.mouse_mode) {
		case "grab":
			flavor_text_prefix = "Grab";
			break;
			
		case "look":
			flavor_text_prefix = "Look at";
			break;
			
		case "talk":
			flavor_text_prefix = "Talk to";
			break;
			
		case "move":
			flavor_text_prefix = "Walk to";
			break;
		
		case "default":
			switch (default_event) {
				case "grab":
					flavor_text_prefix = "Grab";
					break;
			
				case "look":
					flavor_text_prefix = "Look at";
					break;
			
				case "talk":
					flavor_text_prefix = "Talk to";
					break;
			
				case "move":
					flavor_text_prefix = "Walk to";
					break;
			break;
			}
			
	}
	
	if (global.mouse_mode == "item")
		obj_mouse.flavor_text = "Use " + global.inventory[global.inventory_grab_index] + " on " + obj_flavor_id;
	else
		obj_mouse.flavor_text = flavor_text_prefix + " " + obj_flavor_id;
}