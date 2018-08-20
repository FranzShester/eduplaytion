//reset the score
if score < 0 {
	score = 0; 
}

//update score text
score_text = string_format(score,5,0);
score_text = string_replace_all(score_text," ",0);

//update operation text
operation_text = string(global.math_operation_a) + global.math_operation_type + string(global.math_operation_b);

//controlador de energía
if ((global.playerEnergy > 0) && (!energyUP)) {
	global.playerEnergy -= 1;
}

else if ((global.playerEnergy < playerMaxEnergy) && (energyUP)) {
	global.playerEnergy += 8;
}
if (global.playerEnergy >= tope) {
	energyUP = false;
}