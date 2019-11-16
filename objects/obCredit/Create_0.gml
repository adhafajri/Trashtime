/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 32;

menuX = 0;
menuY = guiHeight/2;
menuXTarget = guiWidth/2 - 480;
menuSpeed = 30;
menuItemHeight = font_get_size(foMain);
menuCommitted = -1;
menuControl = true;

menu[1] = "PLAY";
menu[0] = "BACK";

menu_items = array_length_1d(menu);
menu_cursor = 1;