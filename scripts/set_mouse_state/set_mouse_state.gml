/// @desc set_mouse_state(state)
/// @arg state
function set_mouse_state(argument0) {

	global.mouse_mode = argument0;

	with (obj_mouse) {

		switch (argument0) {
			case "default":
				mouse_index = 0;
				break;
		
			case "grab":
				mouse_index = 1;
				break;
		
			case "look":
				mouse_index = 2;
				break;
			
			case "talk":
				mouse_index = 3;
				break;
		
			case "move":
				mouse_index = 4;
				break;
			
			case "item":
				mouse_index = 5;
				break;
			
			case "gun":
				mouse_index = 6;
				break;
	
		}

	}


}
