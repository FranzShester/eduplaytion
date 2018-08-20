/// @function operations_create()
/// @description Load the next operation in the list
var a = irandom_range(1,10);
var b = irandom_range(1,10);
var c = irandom_range(1,10);

// c is never equal to a or b
while ((c == a) || (c==b)) {
	c = irandom_range(1,10);
}

var new_operation = ds_list_create(); //create new operation object

new_operation[| 0] = a; //first number
new_operation[| 1] = b; //second number
new_operation[| 2] = c; //fake number

//add operation object to operations list
ds_list_add(global.math_operations_list,new_operation);