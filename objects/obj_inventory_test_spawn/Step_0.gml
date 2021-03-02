/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape) && !global.inventory_show) {
	instance_create_layer(0, 0, "main", obj_inventory_screen);
	instance_destroy();
}