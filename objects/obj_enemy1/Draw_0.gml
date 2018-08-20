draw_self();

if (flash > 0) {
	
	flash -= 0.1;
	gpu_set_blendmode(bm_add);
	
	shader_set(shd_flash);
	shd_alfa = shader_get_uniform(shd_flash, "_alpha");
	shader_set_uniform_f(shd_alfa, flash);

	draw_self();
	shader_reset();
	
	gpu_set_blendmode(bm_normal);
}
