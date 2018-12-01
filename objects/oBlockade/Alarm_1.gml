/// @description <description>
if (image_index != 0)
{
	ScreenShake(0.001, 35, room_speed/8);
	audio_play_sound(sndSlam, 1, false);
}
image_speed = 0;
image_index = 0;
makeDummy = true;

