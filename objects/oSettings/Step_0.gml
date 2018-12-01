/// @description <description>

var sfx = global.sound * 100;
var bgm = global.music * 100;
if (global.shake == 1) var ss = "ON";
if (global.shake == 0) var ss = "OFF";

menu[3] = "SFX Volume " + string(round(sfx)) + "%";
menu[2] = "Music Volume " + string(round(bgm)) + "%";
menu[1] = "Screen Shake " + string(ss);

//keyboard

if (menu_control)
{
	if (keyboard_check_pressed(vk_up)) or (keyboard_check_pressed(ord("W")))
	{
		menu_cursor++;
		audio_play_sound(sndClick, 1, false);
		if (menu_cursor >= menu_items) 
		{
			menu_cursor = 0;
		}
	}
	if (keyboard_check_pressed(vk_down)) or (keyboard_check_pressed(ord("S")))
	{
		menu_cursor--;
		audio_play_sound(sndClick, 1, false);
		if (menu_cursor < 0) 
		{
			menu_cursor = menu_items -1;
		}
	}
	if (keyboard_check_pressed(vk_enter))
	{
		menu_committed = menu_cursor;
		menu_control = true;
	}
}


if (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 3:
			if (global.sound == 1)
			{
				global.sound = 0;
				audio_set_master_gain(0, global.sound)
				menu_committed = -1;
			}
			else
			{
				global.sound += 0.1;
				audio_set_master_gain(0, global.sound)
				menu_committed = -1;
			}
		break;
		case 2:
			if (global.music == 1)
			{
				global.music = 0;
				audio_sound_gain(sndBGM, global.music, 300);
				menu_committed = -1;
			}
			else
			{
				global.music += 0.1;
				audio_sound_gain(sndBGM, global.music, 300);
				menu_committed = -1;
			}
		break;
		case 1: 
			if (global.shake == 1)
			{
				global.shake = 0;
				menu_committed = -1;
			}
			else
			{
				global.shake = 1;
				ScreenShake(4, 4, 60);
				menu_committed = -1;
			}
		break;
		case 0: 
			SaveSettings();
			room_goto(rAMenu);
		break;
	}
}
