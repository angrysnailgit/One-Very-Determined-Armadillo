#region Screen Shake

cam = view_camera[0];
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;


global.shake_length = 0;
global.shake_xmagnitude = 0;
global.shake_ymagnitude = 0;
global.shake_xremain = 0;
global.shake_yremain = 0;

#endregion