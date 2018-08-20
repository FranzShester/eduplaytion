/// @description Player´s zomm
// You can write your code in this editor
if (image_xscale >= 0.9) {
    image_xscale -= 0.04;
	image_yscale -= 0.04;
	alarm[3] = 1;
}
else {
	frozen = false;
}