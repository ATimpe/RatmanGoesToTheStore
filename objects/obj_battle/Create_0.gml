/// @desc

x_offset = 80;
y_offset = 240;
global.battle = true;

battle_state = 0;

battle_gui_state = 0;

top_bg_y = -60;
bottom_bg_y = 60;

str_battle = "Caution: Battle in Progress  ";
draw_set_font(fnt_battle_text);
string_x_len = -sin(arctan(-103)) * string_width(str_battle);
string_y_len = -tan(arctan(-1/103)) * string_x_len;

battle_text_x = -string_x_len;
battle_text_y = -string_y_len;