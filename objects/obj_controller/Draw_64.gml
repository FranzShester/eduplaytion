/// @description Insert description here
// Energy Bar

draw_sprite(spr_energy,0,0,670);
draw_sprite_ext(spr_energyFull,0,0,670,max(0,global.playerEnergy/playerMaxEnergy),1,0,c_white,1);

draw_text(50,85,global.math_alternatives[|0]);
draw_text(150,85,global.math_alternatives[|1]);
draw_text(250,85,global.math_alternatives[|2]);