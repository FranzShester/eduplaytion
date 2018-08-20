 //solo suena y hace danho cuando el enemigo entra en pantalla
if (y >= 0) {
	
	if (global.playerEnergy >= 300) {
	hp -=2; //dano ocacionado por el arma
	}
	else {
		hp -=1;
	}
	
	audio_sound_pitch(snd_enemydmg, random_range(0.7,1)); //sonido al impactar bala
	audio_play_sound(snd_enemydmg,1,0);
	flash = 1;
	
	instance_create_layer(other.x-45,other.y-10,"efectos", obj_explosions); //explosion al impactar con el enemigo
	with(other) { instance_destroy(); }// se destruye la bala 
}