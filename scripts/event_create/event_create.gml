/// @desc event_create(script_name)
/// @arg script_name
function event_create(argument0) {

	/*
	if (!file_exists(working_directory + argument0)) {
		show_message("error. file not found");
		exit;
	}
	*/

	if (global.event == false) {
		instance_create_layer(0, 240, "textbox", obj_event);
		with (obj_event) {
			script = argument0;
		}
	}


}
