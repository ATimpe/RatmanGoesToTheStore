/// @desc inventory_drop(item)
/// @arg item
function inventory_drop(argument0) {

	item_id = -1;

	for (i = 0; i < global.inventory_size; i++) {
		if (global.inventory[i] == argument0) {
			item_id = i;
			break;
		}
	}

	if (item_id == -1) {
		show_debug_message("error. item removed not found.");
		exit;
	}

	global.inventory_size--;

	for (i = item_id; i < global.inventory_size; i++) { //moves all items in front of the item removed 1 to the left
		global.inventory[i] = global.inventory[i + 1];
	}


}
