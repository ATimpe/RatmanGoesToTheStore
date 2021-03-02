/// @desc inventory_get_sprite(item)
/// @arg item
function inventory_get_sprite(argument0) {

	// this code holds every single item's texture for their invenotry item and mouse texture. Textures for on-screen items can be found at item_get_sprite()




	switch (argument0) {
		case "Grocery List":
			return spr_inventory_list;
	
		case "Rat Gun":
			return spr_inventory_gun;
		
		default:
			show_debug_message("error. item sprite not found");
			return spr_inventory_item;





	}


}
