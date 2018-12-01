if (event_type == ev_draw) and (event_number == 0)
{
	if (!surface_exists(iGameController.light_surf))
	{
		iGameController.light_surf = surface_create(room_width, room_height);
	}
	surface_set_target(iGameController.light_surf);
	draw_clear_alpha(c_dkgray, 1);
	gpu_set_blendmode(bm_zero);
}