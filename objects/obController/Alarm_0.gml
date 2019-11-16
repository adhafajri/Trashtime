/// @description Obstacles
// You can write your code in this editor

randomize();
var count = irandom_range(1, 2);

var i = instance_create_layer(room_width + 100,
							room_height - 112,
							"Obstacles",
							obObstacle);
i.sprite_index = choose(spObstacleGround1, spObstacleGround2, spObstacleAir1, spObstacleAir2);
switch (i.sprite_index) {
	case spObstacleGround1:
		i.image_speed = 0;
		
		if (global.speedModifier > 1.5) {
			if (count == 2) {
				instance_create_layer(room_width + 100,
							room_height - 112,
							"Obstacles",
							obObstacle);
			}
		}
		break;
	case spObstacleGround2:
		i.image_speed = 1;
		
		if (global.speedModifier > 1.5) {
			if (count == 2) {
				instance_create_layer(room_width + 100,
							room_height - 112,
							"Obstacles",
							obObstacle);
			}
		}
		break;
		
	case spObstacleAir1:
		i.image_speed = 1;
		i.y = choose(room_height - 400, room_height - 528);
		break;
	case spObstacleAir2:
		i.image_speed = 1;
		i.y = choose(room_height - 400, room_height - 528);
		break;
}


alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier);