/// @description <description>

if collision_circle(x, y, 15, oActor, false, true) && !switched
{
	if (!switched) {audio_play_sound(sndClick, 1, false)};
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
