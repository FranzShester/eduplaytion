/// @function operations_next()
/// @description Load the next operation in the list into the global variables

//delete the previous operation from the list
ds_list_delete(global.math_operations_list,0);

//get the operation
var next_operation = global.math_operations_list[| 0];

//load the operation
global.math_operation_a = next_operation[| 0];
global.math_operation_b = next_operation[| 1];
global.math_operation_c = next_operation[| 2];

global.math_answer = operations_get_answer(0);
global.math_fake = operations_get_fake_answer(0);
global.math_fake2 = operations_get_fake_answer2(0);

if (global.math_fake == global.math_fake2) {
	global.math_fake2 += 1;
}

//reeplaces the alternatives from the list and shuffles
ds_list_replace(global.math_alternatives,0,global.math_answer);
ds_list_replace(global.math_alternatives,1,global.math_fake);
ds_list_replace(global.math_alternatives,2,global.math_fake2);
ds_list_shuffle(global.math_alternatives);

//generate replacement operation if list is less than maximum size
if (ds_list_size(global.math_operations_list) < global.math_operations_max) {
	operations_create();
}