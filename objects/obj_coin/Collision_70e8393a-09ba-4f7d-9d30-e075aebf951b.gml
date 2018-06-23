/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_coin,1,0);
with(obj_score) score +=3;

instance_create_layer(x,y,"efectos", obj_brillo);
instance_destroy();