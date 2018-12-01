/// @description <description>

if (!open)
{
	openOnce = true;
	alarm[0] = room_speed / 3;
};

if (open)
{
	openOnce = true;
	alarm[1] = room_speed / 10;
};

if (image_index == 5 or 0) {image_speed = 0};

