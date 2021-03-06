/// @description GUI/Vars/Menu Setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 260;

menu_x = gui_width /2;
menu_y = gui_height /2;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fDefault;
menu_item_height = font_get_size(fDefault);
menu_committed = -1;
menu_control = true;

var sfx = global.sound * 100;
var bgm = global.music * 100;
if (global.shake == 1) var ss = "ON";
if (global.shake == 0) var ss = "OFF";

menu[3] = "SFX Volume " + string(round(sfx)) + "%";
menu[2] = "Music Volume " + string(round(bgm)) + "%";
menu[1] = "Screen Shake " + string(ss);
menu[0] = "Back";


menu_items = array_length_1d(menu);
menu_cursor = 3;
