/// @desc 

if (global.menu)
	exit;

mouse_col = (mouse_x - (mouse_x % 80)) / 80; // finds row and collumb
mouse_row = (mouse_y - (mouse_y % 80)) / 80;

if (mouse_col >= 6 || mouse_x < 0)
	mouse_col = -1;
	
if (mouse_row >= 6 || mouse_y < 0)
	mouse_row = -1;
	
if (mouse_col == -1 || mouse_row == -1) 
	current_index = -1;
else
	current_index = mouse_col + mouse_row * 6;
	
	
if (mouse_check_button_pressed(mb_left)) {
	if ((current_index == global.inventory_grab_index && global.inventory_grab_index != -1) 
		|| current_index >= global.inventory_size && global.inventory_grab_index != -1) { // if you click on the empty slot with the item or any other empty slot
		global.inventory_grab_index = -1;
		if (global.mouse_mode == "item")
			set_mouse_state("default");
	} 
	
	
	if (global.mouse_mode == "grab" && current_index != -1 && current_index < global.inventory_size) { //if you are grabbing another item
		global.inventory_grab_index = current_index;
		set_mouse_state("item");
	}
	
	
	// add look commands later
	// I plan to add a inventory_get_look_script() that gets the script for looking at the object
	
	// I also play to add get_item_use_script() so you can use two different items on each other
	
}