/// @description Trash
// You can write your code in this editor

randomize();
var count = irandom_range(3, 6);
var b = 100;
var i = instance_create_layer(room_width + 100,
								room_width,
								"Trash",
								obTrash);
i.y = choose(room_height - 240, room_height - 400, room_height - 528);

for (var a = 0; a < count; a++) {
	var i = instance_create_layer(room_width + 100,
								i.y,
								"Trash",
								obTrash);
	i.sprite_index = spTrash;
	i.image_speed = 0;
	i.image_index = irandom_range(0, sprite_get_number(i.sprite_index) - 1);
	i.x = room_width + b;
	b+=100;
}

alarm[2] = room_speed * 3;