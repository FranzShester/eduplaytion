/// Setup motion
direction = point_direction(x,y,x,-100);

speed = 9; //velocidad de disparo

bulletSize_x = 1;
bulletSize_y = 1;

if (global.playerEnergy <= 300) {
	bulletSize_x = 0.7;
	bulletSize_y = 0.7;
	audio_sound_pitch(snd_shoot,1.3);
	audio_play_sound(snd_shoot,0,0);
}
else {
	audio_sound_pitch(snd_shoot,1);
	audio_play_sound(snd_shoot,0,0);
}