//movimiento del enemigo, conjunto con alarm1 
if (hp == 0) {
	score += 10;
	operations_next();
	
	audio_sound_pitch(snd_explosion, 1.4); //sonido al explotar
    audio_play_sound(snd_explosion,1,0);
	instance_create_layer(x-45,y-20,"efectos", obj_bigExplosion);
	if (dropChance == 1) {
		instance_create_layer(x,y+10,"enemigos",obj_coin);
	}
	instance_destroy();
	
}