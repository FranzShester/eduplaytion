/// @function initialise_operations();
/// @description Setup the operations variables and data

//Current Operation Data
global.math_operation_a = 0;
global.math_operation_b = 0;
global.math_operation_type = "+";
global.math_answer = 0;

//Operations List
global.math_operations_list = ds_list_create();
//maximum number of operations in queue, useful to stop the creation of new operations to end a sequence.
global.math_operations_max = 3;

//Generate initial operations
repeat(global.math_operations_max) {
	operations_create();
}

//Load first operation
//get the operation
var next_operation = global.math_operations_list[| 0];

//load the operation
global.math_operation_a = next_operation[| 0];
global.math_operation_b = next_operation[| 1];
global.math_answer = operations_get_answer(0);