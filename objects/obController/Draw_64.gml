/// @description Score
// You can write your code in this editor

if (room == rmGame){
	scoreTextScale = max(scoreTextScale * 0.95, 1);
	var offset = 2;
	var scr = "Score : " + string(global.scrThisGame);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_set_font(foScore);
	draw_set_colour(c_black);
	draw_text_transformed(50-offset, 40, scr, scoreTextScale, scoreTextScale, 0);
	draw_text_transformed(50+offset, 40, scr, scoreTextScale, scoreTextScale, 0);
	draw_text_transformed(50, 40+offset, scr, scoreTextScale, scoreTextScale, 0);
	draw_text_transformed(50, 40-offset, scr, scoreTextScale, scoreTextScale, 0);
	draw_set_colour(c_white);
	draw_text_transformed(50, 40, scr, scoreTextScale, scoreTextScale, 0);
}