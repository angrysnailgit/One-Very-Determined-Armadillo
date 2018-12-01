/// @description <description>

if (collision_point(x, y-20, oPuzzleBox, false, true) or collision_line(x-25, y-30, x+25, y-30, oActor, false, true)) && !switched
{
	if (!switched) {audio_play_sound(sndPressure, 1, false)};
	image_index = 1;
	switched = true;
	with (type)
	{
		if (sID == other.sID)
		{
			open = true;
		}
	}
}
else if !(collision_point(x, y-20, oPuzzleBox, false, true) or collision_line(x-25, y-30, x+25, y-30, oActor, false, true))
{
	switched = false;
	image_index = 0;
	with (type)
	{
		if (sID == other.sID)
		{
			open = false;
		}
	}
}
