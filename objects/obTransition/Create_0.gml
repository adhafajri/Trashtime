/// @description Insert description here
// You can write your code in this editor

w = display_get_gui_width();
h = display_get_gui_height();
hHalf = h/2;

enum TRANS_MODE {
	OFF,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
full = 1.2;