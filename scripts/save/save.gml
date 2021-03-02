/// @desc save(file_num)
/// @arg file_num
function save(argument0) {

	ini_open(working_directory + "save" + string(argument0) + ".ini");

	for (i = 0; i < global.inventory_size; i++)
		ini_write_string("inventory", "invenotry" + string(i), global.inventory[i]);
	
	ini_write_real("inventory", "invenotry_size", global.inventory_size);

	ini_write_real("ending", "ending1", global.ending1);
	ini_write_real("ending", "ending2", global.ending2);
	ini_write_real("ending", "ending_dtr", global.ending_dtr);
	ini_write_real("ending", "ending_police", global.ending_police);
	ini_write_real("ending", "ending_cornflakes", global.ending_cornflakes);
	ini_write_real("ending", "ending_breakroom", global.ending_breakroom);
	ini_write_real("ending", "ending_brain", global.ending_brain);
	ini_write_real("ending", "ending_jambo", global.ending_jambo);
	ini_write_real("ending", "ending_mold", global.ending_mold);
	ini_write_real("ending", "ending_final", global.ending_final);

	ini_write_real("event", "event_dtr_owen_defeated", global.event_dtr_owen_defeated);

	ini_write_string("room", "current_room", room);

	ini_close();


}
