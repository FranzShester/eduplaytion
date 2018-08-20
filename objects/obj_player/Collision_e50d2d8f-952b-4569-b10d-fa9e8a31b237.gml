/// @description Insert description here
if ((!frozen) && (invincible == 0)) {

	score -= 20;
	audio_sound_pitch(snd_explosion, 0.8); //sonido al explotar
	audio_play_sound(snd_explosion,1,0);
	instance_create_layer(x,y,"efectos", obj_playerExplosion);
	x = room_width/2;
	y = 920;
	vx = 0;
	vy = 0;
	frozen = true;
	invincible = 1;
	alarm[1] = 240;
	alarm[2] = 1;
	sprite_index = spr_player;
	move_towards_point(x,400,2);
}