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


menu[3] = "Thanks for Playing!";
menu[2] = "Made for GitHub Game Off";
menu[1] = "By @angry_snail and @distrait";
menu[0] = "With music by @Coximor";


menu_items = array_length_1d(menu);
menu_cursor = 3;
