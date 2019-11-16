/// @description Clouds
// You can write your code in this editor

randomize();
instance_create_layer(room_width + 100,
					room_height/2 + irandom_range(-200, 100),
					"Clouds", 
					obCloud);

alarm[1] = room_speed * random_range(3/global.speedModifier, 6/global.speedModifier);