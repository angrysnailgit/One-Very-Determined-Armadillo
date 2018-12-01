/// @description <description>

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
		menu_control = false;
	}
}


if (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 3: instance_create_depth(x, y, 1, oFadeRoomBegin); break;
		case 2: default: 
		{
			if (!file_exists(SAVEFILE))
			{
				instance_create_depth(x, y, 1, oFadeRoomBegin);
			}
			else
			{
				instance_create_depth(x, y, 1, oFadeRoomContinue);
			}
		}
		break;
		case 1: room_goto(rASettings); break;
		case 0: game_end();
	}
}
