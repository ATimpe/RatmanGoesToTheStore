/// @desc load(file_num)
/// @arg file_num
function load(argument0) {

	warp_room = rm_main;

	if (!file_exists(working_directory + "save" + string(argument0) + ".ini"))
		exit;
	
	ini_open(working_directory + "save" + string(argument0) + ".ini");

	ini_read_real("inventory", "invenotry_size", global.inventory_size);

	ini_read_real("ending", "ending1", global.ending1);
	ini_read_real("ending", "ending2", global.ending2);
	ini_read_real("ending", "ending_dtr", global.ending_dtr);
	ini_read_real("ending", "ending_police", global.ending_police);
	ini_read_real("ending", "ending_cornflakes", global.ending_cornflakes);
	ini_read_real("ending", "ending_breakroom", global.ending_breakroom);
	ini_read_real("ending", "ending_brain", global.ending_brain);
	ini_read_real("ending", "ending_jambo", global.ending_jambo);
	ini_read_real("ending", "ending_mold", global.ending_mold);
	ini_read_real("ending", "ending_final", global.ending_final);

	ini_read_real("event", "event_dtr_owen_defeated", global.event_dtr_owen_defeated);

	ini_read_string("room", "current_room", warp_room);

	ini_close();

	warp(warp_room, true, false);


}
