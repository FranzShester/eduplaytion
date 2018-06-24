// movimiento
if (!frozen) {
	if (keyboard_check(vk_left) && (x > sprite_width)) {
		x -= velocity_spd ;
	}

	if (keyboard_check(vk_right) && (x < (room_width-sprite_width))) {
		x += velocity_spd ;
	}

	if (keyboard_check(vk_up) && (y > sprite_height)) {
		y -= velocity_spd ;
	}

	if (keyboard_check(vk_down) && (y < (room_height-sprite_height))) {
		y += velocity_spd ;
	}

	if (keyboard_check(vk_enter)) {  room_restart(); }
	//disparo
	if (keyboard_check(vk_space) && (cooldown < 1)) {
		instance_create_layer(x,y-90,layer, obj_bullet);
		cooldown = 20;
	}
}
cooldown = cooldown - 1;

// desactivar el estado frozen al respawnear
if (y == 620) {
	speed = 0;
	frozen = false;
}