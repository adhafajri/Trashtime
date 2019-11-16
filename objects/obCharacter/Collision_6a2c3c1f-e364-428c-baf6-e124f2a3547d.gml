/// @description Kill Player
// You can write your code in this editor
audio_stop_sound(soBackgroundMusic);
if (global.playerMode != TRANS_PLAYER.DEAD) {
	audio_play_sound(soDead, 100, false);
}
global.playerMode = TRANS_PLAYER.DEAD;
alarm[0] = 30;
global.speedModifier = 1;
sprite_index = spCharacterDead;
image_speed = 1;
game_set_speed(20, gamespeed_fps);

if (global.scrThisGame > global.highScr) {
	global.highScr = global.scrThisGame;
}

//Overwrite old save
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

//Create new Save
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file, global.highScr);
file_text_close(file);