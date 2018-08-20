/// @function operations_get_answer(number)
/// @description get the answer of the given operation

//get the operation
var ga_op1 = global.math_operations_list[| argument0];
var ga_answer1 = 0;

switch(global.math_operation_type) {
	case "+":
	ga_answer1 = ga_op1[| 0] + ga_op1[| 2];
	break;
	case "-":
	ga_answer1 = ga_op1[| 0] - ga_op1[| 2];
	break;
	case "*":
	ga_answer1 = ga_op1[| 0] * ga_op1[| 2];
	break;
	case "/":
	ga_answer1 = ga_op1[| 0] / ga_op1[| 2];
	break;
}


return ga_answer1;