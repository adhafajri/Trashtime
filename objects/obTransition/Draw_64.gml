/// @description Insert description here
// You can write your code in this editor
if(mode != TRANS_MODE.OFF)
{
	draw_set_colour(c_black);
	draw_rectangle(0, 0, w, percent*hHalf, false);
	draw_rectangle(0, h, w, h-(percent*hHalf), false);
}