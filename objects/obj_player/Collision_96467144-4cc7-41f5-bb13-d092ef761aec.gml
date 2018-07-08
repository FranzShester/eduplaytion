/// @description Insert description here
// You can write your code in this editor

instance_create_layer(other.x-45,other.y,"efectos", obj_explosions); //explosion al impactar con el enemigo
score -= 5;
with(other) { instance_destroy(); }// se destruye la bala 
