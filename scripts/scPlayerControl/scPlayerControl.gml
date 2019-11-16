
if (global.playerMode != TRANS_PLAYER.DEAD) {
	jumpKey = keyboard_check_pressed(vk_space);
	jumpKeyAlt = keyboard_check_pressed(vk_up);
	// If Character touching the ground
	if (place_meeting(x, y+1, obWall)) {
		global.playerMode = TRANS_PLAYER.RUNNING;
		canDoubleJump = false;
		vsp = 0;
	
		// If Player press Jump
		if (jumpKey || jumpKeyAlt) {
			canDoubleJump = true;
			global.playerMode = TRANS_PLAYER.JUMPING;
			vsp = -jsp;
			audio_play_sound(soJump, 100, false);
		}
	}
	else {
		if(sign(vsp) > 0){ 
			global.playerMode = TRANS_PLAYER.FALLING;
		} else {
			if (image_index > image_number-1) {
				global.playerMode = TRANS_PLAYER.JUMPING;
			}
		}
	
		if ((jumpKey || jumpKeyAlt) 
			&& canDoubleJump) {
			canDoubleJump = false;
			global.playerMode = TRANS_PLAYER.DOUBLEJUMPING;
			vsp = -jsp;
			audio_play_sound(soDoubleJump, 100, false);
		}
	
		if (vsp < termVelocity)
			vsp += grv;
	}

	if (place_meeting(x, y + vsp, obWall)) {
		while (!place_meeting(x, y+sign(vsp), obWall)) {
			y += sign(vsp);
		}
	
		vsp = 0;
	}

	y += vsp;
}
	