 //solo suena y hace danho cuando el enemigo entra en pantalla
if (y >= 0) {
	hp +=1; //dano ocacionado por el arma
	audio_sound_pitch(snd_enemydmg, random_range(0.7,1)); //sonido al impactar bala
	audio_play_sound(snd_enemydmg,1,0);

	// to change the color to red
	image_blend = c_red;
	  //Set the alarm to get back to normal color
	alarm[0] = 1.5;
}

