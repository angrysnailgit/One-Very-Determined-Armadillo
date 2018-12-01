if (event_type == ev_draw) and (event_number == 0 ) 
{
    surface_reset_target();
    gpu_set_blendmode(bm_normal);
    //camera_apply(camera_create_view(0,0, view_wport[view_current], view_hport[view_current]));   
    gpu_set_blendmode_ext(bm_dest_color, bm_zero);
    draw_surface(iGameController.light_surf, 0, 0);
    gpu_set_blendmode(bm_normal);
}