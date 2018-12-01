/// @description <description>

#region Screen Shake

x += (xTo - x) /25;
y += (yTo - y) /25;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

if (global.shake_yremain != 0)
{
	x += random_range(-global.shake_xremain, global.shake_xremain);
	y += random_range(-global.shake_yremain, global.shake_yremain);
	global.shake_xremain = max(0, global.shake_xremain-((1/global.shake_length) * global.shake_xmagnitude));
	global.shake_yremain = max(0, global.shake_yremain-((1/global.shake_length) * global.shake_ymagnitude));
}

//update camera view
camera_set_view_pos(cam, x - (view_w_half), y - (view_h_half));

#endregion