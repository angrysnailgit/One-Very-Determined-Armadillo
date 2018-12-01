/// @description <description>

#region Transitions

tAlpha = clamp(tAlpha + (fade * 0.02), 0, 1);
if (tAlpha == 1)
{
	room_restart();
	fade = -1;
}

if (tAlpha == 0) && (fade == -1)
{
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(tAlpha);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), 0);
draw_set_alpha(1);

#endregion
