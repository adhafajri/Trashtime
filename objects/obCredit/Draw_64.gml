/// @description Insert description here
// You can write your code in this editor
draw_set_font(foMain);
draw_set_halign(fa_center);
draw_set_valign(fa_center);


for(var i = 0; i < menu_items; i++) {
	var offset = 2;
	var txt = menu[i];

	if(menu_cursor == i){
		txt = string_insert("> ", txt, 0);
		txt = string_insert(" <", txt, string_width(txt));
		var col = c_white;
	} else {
		var col = c_gray;
	}

	xx = menuX;
	yy = menuY - (menuItemHeight * (i * 1.5));

	draw_set_colour(c_black);
	draw_text(xx-offset, yy, txt);
	draw_text(xx+offset, yy, txt);
	draw_text(xx, yy+offset, txt);
	draw_text(xx, yy-offset, txt);
	draw_set_colour(col);
	draw_text(xx, yy, txt);

}

draw_set_colour(c_white);
draw_text(room_width/2+150-offset, 40, string("Credit"));
draw_text(room_width/2+150+offset, 40, string("Credit"));
draw_text(room_width/2+150, 40+offset, string("Credit"));
draw_text(room_width/2+150, 40-offset, string("Credit"));
draw_set_colour(c_black);
draw_text(room_width/2+150, 40, string("Credit"));