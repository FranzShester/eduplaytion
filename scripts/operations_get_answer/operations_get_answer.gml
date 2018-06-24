/// @function operations_get_answer(number)
/// @description get the answer of the given operation

//get the operation
var ga_op = global.math_operations_list[| argument0];
var ga_answer = 0;
switch(global.math_operation_type) {
	case "+":
	ga_answer = ga_op[| 0] + ga_op[| 1];
	break;
	case "-":
	ga_answer = ga_op[| 0] - ga_op[| 1];
	break;
	case "*":
	ga_answer = ga_op[| 0] * ga_op[| 1];
	break;
	case "/":
	ga_answer = ga_op[| 0] / ga_op[| 1];
	break;
}

return ga_answer;