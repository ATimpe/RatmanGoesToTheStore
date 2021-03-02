/// @desc Button Detection

if (!(position_meeting(mouse_x - global.camera_x, mouse_y - global.camera_y, self) && mouse_check_button_pressed(mb_left)))
	exit;
	

switch (menu_button_id) {
	case "resume":
		event_perform_object(obj_menu, ev_other, ev_user15);
		break;
			
	case "save":
		event_perform_object(obj_menu, ev_other, ev_user1);
		break;
		
	case "options":
	
	
		//TO BE ADDED
		
		
		
		break;
		
	case "exit":
		event_perform_object(obj_menu, ev_other, ev_user3);
		break;
			
			
			
	case "save1":
		save(1);
		break;
			
	case "save2":
		save(2);
		break;
			
	case "save3":
		save(3);
		break;
			
	case "save4":
		save(4);
		break;
		
			
			
			
	case "yes":
		game_end(); // CLOSES GAME
		break;
			
	case "no":
		event_perform_object(obj_menu, ev_other, ev_user0);
		break;
			
			
			
			
			
	case "load1":
		load(1);
		break;
			
	case "load2":
		load(2);
		break;
			
	case "load3":
		load(3);
		break;
			
	case "load4":
		load(4);
		break;

}