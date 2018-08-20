/// @description Insert description here
// You can write your code in this editor
if (global.math_alternatives[|0] == global.math_answer) {
	
	score +=3;
	energyUP = true;
	tope = global.playerEnergy+300;
	
	if (tope > playerMaxEnergy) {
		tope = playerMaxEnergy
	}	
	
	audio_play_sound(snd_rightAnswer,2,0);
	operations_next();
}
else {
	global.shake = true;
	alarm[0] = 20;
	audio_play_sound(snd_wrongAnswer,2,0);
	global.playerEnergy -= 100;
	score -=3;
	
	if (global.playerEnergy < 0) {
		global.playerEnergy = 0;
	}
}
