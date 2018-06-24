//Draw Current Operation
draw_text(60,25,operation_text);

//Get camera data
var camerax = camera_get_view_x(view_camera[0]);
var cameray = camera_get_view_y(view_camera[0]);
var cameraw = camera_get_view_width(view_camera[0]);

draw_set_font(fnt_puntaje);
draw_set_color(c_white);

//draw score
draw_text(camerax + cameraw/2, cameray +25, string("score: ")+score_text);
draw_set_halign( fa_center );