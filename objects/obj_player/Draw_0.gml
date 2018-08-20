/// @description Insert description here
// Draw normal sprite or shake
if (global.shake == true) {
	
	var ran_x = irandom_range(-5,5);
	var ran_y = irandom_range(-5,5);
	draw_sprite_ext(sprite_index,image_index,x+ran_x,y+y_lerp+ran_y,image_xscale,image_yscale,image_angle,c_white,alfa);
}
else {
draw_sprite_ext(sprite_index,image_index,x,y+y_lerp,image_xscale,image_yscale,image_angle,c_white,alfa);
}