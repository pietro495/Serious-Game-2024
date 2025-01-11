/// @description Handle click

var realValue = value;

with (obj_boss1_indovinello) {
	if (array_contains(currentOrder, realValue)) {
		array_delete_value(currentOrder, realValue);
	} else {
		array_push(currentOrder, realValue);
	}
}