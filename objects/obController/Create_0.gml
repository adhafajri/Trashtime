/// @description Insert description here
// You can write your code in this editor

#macro RES_W 1280
#macro RES_H 720
display_set_gui_size(RES_W, RES_H);

global.speedModifier = 1;
global.highScr = 0;

if (file_exists(SAVEFILE)) {
	var file = file_text_open_read(SAVEFILE);
	var target = file_text_read_real(file);
	file_text_close(file);
	global.highScr = target;
}

global.scrThisGame = 0;

scoreTextScale = 0;

if (room == rmGame) {
	//Obstacles
	alarm[0] = room_speed * 3;

	//Clouds
	alarm[1] = room_speed * 3;

	//Trash
	alarm[2] = room_speed * 3;
}