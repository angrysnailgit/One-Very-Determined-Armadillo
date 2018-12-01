/// @description <description>

audio_play_sound(sndBlockade, 1, false);
image_speed = 1;

with (oBlockadeDummy)
{
	if (other.sID == sID)
	{
		instance_destroy();
	}
}