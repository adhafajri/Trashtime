/// @description Insert description here
// You can write your code in this editor

if (global.playerMode != TRANS_PLAYER.DEAD) {
	global.scrThisGame += 5;
	instance_destroy();
	with(obController) {
				scoreTextScale = 2;
	}
	audio_play_sound(soTrash, 300, false);
}