if (!open)
{
	open = true;
	alarm[0] = room_speed / 3;
}

if (image_index == 5) && (spawn)
{
	spawn = false;
	image_speed = 0
	instance_create_layer(x, y-45, "Player", oActorSpawn);
	alarm[1] = room_speed / 5;
}
