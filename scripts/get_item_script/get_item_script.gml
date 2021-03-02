/// @desc get_item_script(obj_id)
/// @arg obj_id
function get_item_script(argument0) {

	switch (global.inventory[global.inventory_grab_index]) {
		case "Grocery List":
			item1 = "glist";
			break;
		
		case "Rat Gun":
			item1 = "rgun";
			break;
		
		default: //failstate
			show_message_async("error. item1 not found");
			exit;

	}

	switch (argument0) {
		case "Grocery List": //item1 items are repeated in item2 for item on item interaction. might make this a little simpler later or even giv this its own function
			item2 = "glist";
			break;
		
		case "Rat Gun":
			item2 = "rgun";
			break;
	
		case "the Aisle": //item2 relates to objects in the interface
			item2 = "aisle";
			break;
		
		default: //failstate
			show_message_async("error. item2 not found");
			exit;
	}

	script_name = "item_" + item1 + "_" + item2 + ".txt";

	if (!file_exists(working_directory + script_name))
		return "item_default.txt";
	else
		return script_name;


}
