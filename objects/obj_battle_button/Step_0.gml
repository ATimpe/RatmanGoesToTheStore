/// @desc Button Detection

if (!(position_meeting(mouse_x - global.camera_x, mouse_y - global.camera_y, self) && mouse_check_button_pressed(mb_left)))
	exit;
	

switch (other.battle_button_id) {

	case "gun":
		event_perform_object(obj_battle, ev_other, ev_user1);
		break;
		
	case "special":
		
		//if (global.event_dtr_owen_defeated)
		//	//ADD DO THE RAT ACTIVATOR CODE
		//else
			
		break;
		
	case "leave":
		
		break;

}