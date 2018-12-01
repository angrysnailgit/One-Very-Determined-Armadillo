/// @description Control Game Stuff

#region Settings

#macro SAVEFILE "save.sav"

LoadSettings();
audio_set_master_gain(0, global.sound)

#endregion
#region GUI Stuff

display_set_gui_size(1280, 720);

global.col_white = make_color_rgb(255, 255, 255);
global.col_grayish = make_color_rgb(192, 203, 220);
global.col_darker = make_color_rgb(139, 155, 180);
global.col_almost_black = make_color_rgb(38, 43, 68);
global.col_basically_black = make_color_rgb(24, 20, 37);

#endregion
#region BGM

if (!audio_is_playing(sndBGM))
{
	audio_play_sound(sndBGM, 2, true);
		audio_sound_gain(sndBGM, 0, 0);
		audio_sound_gain(sndBGM, global.music, 5000);
}

#endregion
#region Lighting //wont work on HTML5 so abandoning this

//Init Lighting System

//light_layer = layer_get_id("Lights");

//light_surf = surface_create(room_width, room_height);

//layer_script_begin(light_layer, LightsBegin);
//layer_script_end(light_layer, LightsEnd);


#endregion