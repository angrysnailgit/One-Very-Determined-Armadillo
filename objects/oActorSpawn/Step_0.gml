/// @description <description>

image_alpha += 0.1;

if (image_alpha == 1)
{
	instance_create_layer(x, y, "Player", oActor);
	instance_destroy();
}