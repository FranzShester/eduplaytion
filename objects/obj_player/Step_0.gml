// movimiento
if !frozen {
if keyboard_check(vk_left) && place_free(x - collisionSpeed, y) {
x -= velocidadMov ;
}

if keyboard_check(vk_right) && place_free(x + collisionSpeed, y) {
x += velocidadMov ;
}

if keyboard_check(vk_up) && place_free(x, y - collisionSpeed) {
y -= velocidadMov ;
}

if keyboard_check(vk_down) && place_free(x, y + collisionSpeed) {
y += velocidadMov ;
}

if keyboard_check(vk_enter) room_restart();
//disparo
if keyboard_check(vk_space) && (cooldown < 1)
{
	instance_create_layer(x,y-90,layer, obj_bullet)
	cooldown = 20;
}
}
cooldown = cooldown - 1;

// desactivar el estado frozen al respawnear
if y = 620 {
speed = 0;
frozen = false;
}