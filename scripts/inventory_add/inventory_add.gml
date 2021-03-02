/// @desc invenotry_add(item)
/// @arg item
function inventory_add(argument0) {

	global.inventory[global.inventory_size] = argument0;
	global.inventory_size++;


}
