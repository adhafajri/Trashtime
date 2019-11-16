/// @description Insert description here
// You can write your code in this editor
#macro SAVEFILE "Save.sav"


guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 32;

menuX = guiWidth-guiHeight;
menuY = guiHeight/2+50;
menuXTarget = guiWidth/2;
menuSpeed = 25;
menuItemHeight = font_get_size(foMain);
menuCommitted = -1;
menuControl = true;

menu[0] = "CREDIT";
menu[3] = "PLAY";
menu[1] = "HOW TO PLAY";
menu[2] = "QUIT";

menu_items = array_length_1d(menu);
menu_cursor = 2;