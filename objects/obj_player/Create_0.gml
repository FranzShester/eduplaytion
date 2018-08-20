cooldown = 0;
vx = 0;
vy = 0;
max_spd = 10;
v_friction = 0.8;
frozen = true;
x_input = 0;
y_input = 0;
y_offset = 0;
y_lerp = 0;
alfa = 1;
invincible = 0;
image_angle = 0;
image_speed = 0.5;


// efecto zoom && start
x = room_width/2;
y= room_height;
path_start(pth_startPlayer, 4.8, path_action_stop, 0);
alarm[3] = 1;
image_xscale = 3;
image_yscale = 2.9;

