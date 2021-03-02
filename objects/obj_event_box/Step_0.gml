/// @desc Animate Mouse

if (global.inventory_show || global.menu)
	exit;

if (position_meeting(mouse_x, mouse_y, self) && !global.event 
		&& !(global.mouse_mode == "grab" && !can_grab)
		&& !(global.mouse_mode == "look" && !can_look)
		&& !(global.mouse_mode == "talk" && !can_talk)
		&& !(global.mouse_mode == "move" && !can_move))
	obj_mouse.animated = true;
else if (!position_meeting(mouse_x, mouse_y, obj_event_box)
	|| (position_meeting(mouse_x, mouse_y, self) &&
		((global.mouse_mode == "grab" && !can_grab)
		|| (global.mouse_mode == "look" && !can_look)
		|| (global.mouse_mode == "talk" && !can_talk)
		|| (global.mouse_mode == "move" && !can_move))))
	obj_mouse.animated = false;