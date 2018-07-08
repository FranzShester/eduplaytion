/// @function spawn_enemies()
/// @description create enemies
if (instance_number(obj_enemy1) < ds_list_size(global.math_operations_list)) {
	
	//for each operation above the number of enemies, create an enemy for that operation
	for(var o = instance_number(obj_enemy1); o < ds_list_size(global.math_operations_list); o++) {
		//get operation answer
		var opanswer = operations_get_answer(o);
		//create enemy with operation answer as its number
		with(instance_create_layer((room_width/2),-100,"enemigos", obj_enemy1)) {
			number = opanswer;
		}
	}
}