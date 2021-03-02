/// @desc warp(room, fade, mus_fade)
/// @arg room
/// @arg fade
/// @arg mus_fade
function warp(argument0, argument1, argument2) {

	if (argument1) {  // fade variable set
		with (instance_create_layer(0, 0, "fade", obj_fade)) {
			target = argument0;
			mus_fade = argument2;
		}
	} else
		room_goto(argument0);


}
