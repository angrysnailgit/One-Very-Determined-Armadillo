/// @description <description>
draw_self();
/*
draw_text_colour(20, 10, "State: " + string(state), c_lime, c_lime, c_green, c_green, 1);
draw_text_colour(20, 50, "hPower: " + string(hPower), c_lime, c_lime, c_green, c_green, 1);
draw_text_colour(20, 90, "vPower: " + string(vPower), c_lime, c_lime, c_green, c_green, 1);
var hsp = round(phy_speed_x);
draw_text_colour(20, 130, "Hsp: " + string(hsp), c_lime, c_lime, c_green, c_green, 1);
var vsp = round(phy_speed_y);
draw_text_colour(20, 170, "Vsp: " + string(vsp), c_lime, c_lime, c_green, c_green, 1);
var stopped = abs(hsp) + abs(vsp);
draw_text_colour(20, 210, "Stopped: " + string(stopped), c_lime, c_lime, c_green, c_green, 1);