/// @desc ScreenShake(x magnitude, y magnitude, frames)
/// @arg x_magnitude sets horozontal shake strength
/// @arg y_magnitude sets vertical shake strength
/// @arg frames sets the shake duration in frames

if (global.shake)
{
	if	(argument0 > global.shake_xremain) && (argument0 > global.shake_yremain)
	{
		global.shake_xmagnitude = argument0;
		global.shake_ymagnitude = argument1;
		global.shake_xremain = argument0;
		global.shake_yremain = argument1;
		global.shake_length = argument2;
	}
}
