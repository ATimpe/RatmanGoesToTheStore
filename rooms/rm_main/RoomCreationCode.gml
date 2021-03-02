// initialize global variables

global.event = false;
global.current_track[0] = mus_opening;
global.track_variation = 0;
global.current_variation = 0;
set_mouse_state("default");
global.gui = false;
global.camera_x = 0;
global.camera_y = 0;

global.inventory = [];
global.inventory[0] = "Grocery List";
global.inventory[1] = "Rat Gun";
global.inventory_size = 2;
global.inventory_grab_index = -1;
global.inventory_show = false;

//EVENT VARIABLES

global.event_dtr_owen_defeated = false;

//ENDING VARIBALES

global.ending1 = false;
global.ending2 = false;
global.ending_dtr = false;

//VARABALES NOT IN USE CURRENTLY


global.ending_police = false;
global.ending_cornflakes = false;
global.ending_breakroom = false;
global.ending_brain = false;
global.ending_jambo = false;
global.ending_mold = false;
global.ending_final = false;

global.battle = false;

global.menu = false;
global.can_pause = false;

room_goto(rm_store_main);