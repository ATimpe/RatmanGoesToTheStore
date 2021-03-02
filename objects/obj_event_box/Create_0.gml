flavor_text_prefix = "";
flavor_text_x = global.camera_x;
flavor_text_y = global.camera_y;

// THIS SYSTEM ALLOWS THE SCRIPTS TO BE LEFT AS DEFAULT IN THE VARIABLES FOR OBJ_EVENT_BOX
// AND AUTOMATICALLY FINDS IF THERE IS A SCRIPT BASED ON OBJ_ID
if (talk_script == "scripts/general/talk/scr_talk_default.txt"){
	if (file_exists("scripts/general/talk/scr_talk_" + obj_id + ".txt"))
		talk_script = "scripts/general/talk/scr_talk_" + obj_id + ".txt";
}

if (look_script == "scripts/general/look/scr_look_default.txt"){
	if (file_exists("scripts/general/look/scr_look_" + obj_id + ".txt"))
		look_script = "scripts/general/look/scr_look_" + obj_id + ".txt";
}

if (grab_script == "scripts/general/grab/scr_grab_default.txt"){
	if (file_exists("scripts/general/grab/scr_grab_" + obj_id + ".txt"))
		grab_script = "scripts/general/grab/scr_grab_" + obj_id + ".txt";
}