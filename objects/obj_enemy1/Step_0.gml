//movimiento del enemigo, conjunto con alarm1 

if x <= 50 || x >= 970 || y >= 400 || (paso0 = true && y <= 40) { 
	move_towards_point(irandom_range(60,960) ,irandom_range(50,380), spd);
	}
if y >=45 {
	paso0 = true;
}
//q pasa cuando el mono se muere
if hp = global.math_operation_a + global.math_operation_b {
	with (obj_score) score += 10;
	global.math_operation_a = irandom_range(1,5);
	global.math_operation_b = irandom_range(0,5);
	
	audio_sound_pitch(snd_explosion, 1.4); //sonido al explotar
    audio_play_sound(snd_explosion,1,0);
	instance_create_layer(x-45,y-20,"efectos", obj_bigExplosion);
	if dropChance = 1 {
	instance_create_layer(x,y+10,"enemigos",obj_coin);
	}
	instance_destroy();
	
}