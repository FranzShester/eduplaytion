/// @description Insert description here
// You can write your code in this editor
if ((hp <= 0) || (y >=room_height+100)) {
	score += 10;
	
	audio_sound_pitch(snd_explosion, 1.4); //sonido al explotar
    audio_play_sound(snd_explosion,1,0);
	instance_create_layer(x+70,y+70,"efectos", obj_bigExplosion);
	if (dropChance == 1) {
		instance_create_layer(x,y+10,"enemigos",obj_coin);
	}
	instance_destroy();
	
}