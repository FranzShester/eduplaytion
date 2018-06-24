/// @description Insert description here
// You can write your code in this editor
var camerax = camera_get_view_x(view_camera[0]);
var cameray = camera_get_view_y(view_camera[0]);
var cameraw = camera_get_view_width(view_camera[0]);

draw_set_font(fnt_puntaje);
draw_set_color(c_white);

if score < 0 {
	score = 0; 
}
puntaje_show = string_format(score,5,0);
puntaje_show = string_replace_all(puntaje_show," ",0);
draw_text(camerax + cameraw/2, cameray +25, string("score: ")+puntaje_show);
draw_set_halign( fa_center );