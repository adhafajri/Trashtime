/// @description Insert description here
// You can write your code in this editor

menuX += (menuXTarget - menuX) / menuSpeed;

if(menuControl) {
	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
		menu_cursor += +1;
		audio_play_sound(soMenu, 100, false);
	
		if(menu_cursor >= menu_items)
		{
			menu_cursor = 0;
		}
	}

	if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
		menu_cursor += -1;
		audio_play_sound(soMenu, 100, false);

		if(menu_cursor < 0)
		{
			menu_cursor = menu_items-1;
		}
	}

	if(keyboard_check_pressed(vk_enter))
	{
		menuXTarget = guiWidth-guiHeight;
		menuCommitted = menu_cursor;
		menuControl = false;
		audio_play_sound(soMenu, 100, false);
	}
}

if((menuX < guiWidth-guiMargin) && (menuCommitted != -1))
{
	switch(menuCommitted)
	{
		case 0:
			scTransition(TRANS_MODE.GOTO, rmCredit);
			break;
		case 3:
			scTransition(TRANS_MODE.GOTO, rmGame);
			break;
		case 2:
			game_end();
			break;
		case 1:
			scTransition(TRANS_MODE.GOTO, rmHowToPlay);
			break;
			
	}
}