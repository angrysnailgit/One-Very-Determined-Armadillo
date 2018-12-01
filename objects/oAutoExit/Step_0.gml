/// @description <description>

if (collision_circle(x, y, 50, oActor, false, true))
{
	if (openOnce)
	{
		audio_play_sound(sndDoor, 1, false);
		image_speed = 1;
		openOnce = false;
	}
};

if (!collision_circle(x, y, 150, oActor, false, true))
{
	openOnce = true;
	if (image_index != 0)
	{
		ScreenShake(0.001, 10, room_speed/8);
		audio_play_sound(sndSlam, 1, false);
	}
	image_speed = 0;
	image_index = 0;
};

if (image_index == 5 or 0) {image_speed = 0};

