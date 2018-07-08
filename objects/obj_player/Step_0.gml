//player input
x_input = -keyboard_check(vk_left)+keyboard_check(vk_right);
y_input = -keyboard_check(vk_up)+keyboard_check(vk_down);
// movimiento
if (!frozen) {
	
	//add velocity from inputs
	if ((x_input != 0) || (y_input != 0)) {
		input_dir = point_direction(0,0,x_input,y_input);
		vx += lengthdir_x(2,input_dir);
		vy += lengthdir_y(2,input_dir);
	}

	//friction and limit speed
	vx = clamp(vx*v_friction,-max_spd,max_spd);
	vy = clamp(vy*v_friction,-max_spd,max_spd);
	
	// move animation 
	if (x_input < 0) {sprite_index = spr_playerLeft;}
	else if (x_input > 0) {sprite_index = spr_playerRight;}
	else {sprite_index = spr_player;}
	
	//update position and prevent ship from moving outside of room	
	x = clamp(x+vx,sprite_width/2,(room_width-(sprite_width/2)));
	y = clamp(y+vy,sprite_height/2,(room_height-(sprite_height/2)));
	
	//shooting
	if (keyboard_check(vk_space) && (cooldown < 1)) {
		instance_create_layer(x,y-90,layer, obj_bullet);
		cooldown = 20;
		y_offset = 10;
		alarm[0] = 5;
	}

	

}

cooldown--;

// desactivar el estado frozen al respawnear
if ((y == 620) && frozen) {
	speed = 0;
	frozen = false;
}

y_lerp = lerp(y_lerp,y_offset,0.2);
image_angle = -vx/2;