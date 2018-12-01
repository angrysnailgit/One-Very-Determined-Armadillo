/// @description <description>
audio_play_sound(sndSpike, 1, false); //sound effect
with (other) {alarm[0] = room_speed}; //delay room restart
with (instance_create_layer(x, y, "Player", oActorDead))
{
	image_xscale = other.image_xscale;
	physics_apply_impulse(x, y, 0, -5000);
	physics_apply_torque(10000);
}
instance_destroy();
