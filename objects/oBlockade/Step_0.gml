/// @description <description>
if (makeDummy)
{
	makeDummy = false;
	var blockade = instance_create_layer(x,  y, "Level_Collisions", oBlockadeDummy)

	with (blockade)
	{
		sID = other.sID;
	}
}


if (!open)
{
	openOnce = true;
	alarm[0] = room_speed / 2;
};

if (open)
{
	openOnce = true;
	alarm[1] = room_speed / 20;
};

if (image_index == 7 or 0) {image_speed = 0};

