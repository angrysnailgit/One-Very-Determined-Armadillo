/// @description <description>

x = oActor.x;
y = oActor.y + 20;

if (instance_exists(oActor))
{
	image_angle = point_direction(mouse_x, mouse_y, oActor.x, oActor.y) - 45;
	var distance = point_distance(oActor.x, oActor.y, mouse_x, mouse_y);
	image_xscale = distance / 200;
	image_yscale = distance / 200;
	image_xscale = clamp(image_xscale, 0.35, 1.5);
	image_yscale = clamp(image_yscale, 0.35, 1.5);
}
else
{
	instance_destroy();
}
