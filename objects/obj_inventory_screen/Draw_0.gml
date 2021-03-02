/// @desc Draw Inventory

for (i = 0; i < global.inventory_size; i++) {
	if (i != global.inventory_grab_index) {
		draw_sprite(inventory_get_sprite(global.inventory[i]), 0, col_current * 80, row_current * 80);
		draw_text(col_current * 80, row_current * 80, global.inventory[i]);
	}
	
	col_current++;
	if (col_current >= 6) {
		col_current -= 6;
		row_current++;
	}
}

col_current = 0;
row_current = 0;

draw_text(0, 200, string(mouse_col) + " " + string(mouse_row));