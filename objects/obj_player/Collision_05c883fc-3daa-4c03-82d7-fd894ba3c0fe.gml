/// @description Insert description here

with (obj_score) {score -= 20;}
audio_sound_pitch(snd_explosion, 0.8); //sonido al explotar
audio_play_sound(snd_explosion,1,0);
instance_create_layer(x,y,"efectos", obj_playerExplosion);
x = room_width/2;
y = 920;
frozen = true;
move_towards_point(x,400,2);