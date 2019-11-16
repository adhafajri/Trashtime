/// @description Insert description here
// You can write your code in this editor

speed = -15 * global.speedModifier;

if (x < 0) {
	randomize();
	move_wrap(true, false, sprite_get_width(sprite_index));
}