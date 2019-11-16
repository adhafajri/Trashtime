/// @description Character Initialisation
// You can write your code in this editor

enum TRANS_PLAYER{
	RUNNING,
	JUMPING,
	DOUBLEJUMPING,
	FALLING,
	DEAD
}

global.playerMode = TRANS_PLAYER.RUNNING;

grv = 7;
jsp = 60;
vsp = 0;
termVelocity = 50;

canDoubleJump = false;