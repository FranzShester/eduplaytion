/// @function operations_create()
/// @description Load the next operation in the list

var new_operation = ds_list_create(); //create new operation object
new_operation[| 0] = irandom_range(1,5); //first number
new_operation[| 1] = irandom_range(1,5); //second number

//add operation object to operations list
ds_list_add(global.math_operations_list,new_operation);