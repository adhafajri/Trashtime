/// @description Insert description here
// You can write your code in this editor

if (room == rmGame) {
	scPlayerControl();
}

switch(global.playerMode) {
	case TRANS_PLAYER.RUNNING:
		sprite_index = spCharacterRun;
		image_speed = 1;
		break;
	case TRANS_PLAYER.JUMPING:
		sprite_index = spCharacterAir;
		image_speed = 0;
		image_index = 0;
		break;
	case TRANS_PLAYER.DOUBLEJUMPING:
		sprite_index = spCharacterDoubleJump;
		image_speed = 1;
		break;
	case TRANS_PLAYER.FALLING:
		sprite_index = spCharacterAir;
		image_speed = 0;
		image_index = 1;
		break;
}