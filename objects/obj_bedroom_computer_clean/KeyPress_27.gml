/// @description Close computer

event_inherited();

if (instance_exists(obj_button_finishmail)) {
	instance_destroy(obj_button_finishmail);
}
if (instance_exists(obj_button_prevmail)) {
	instance_destroy(obj_button_prevmail);
}

if (instance_exists(obj_button_nextmail)) {
	instance_destroy(obj_button_nextmail);
}

if (instance_exists(obj_button_mark_as_phishing)) {
	instance_destroy(obj_button_mark_as_phishing);
}

if (instance_exists(obj_button_mark_as_real)) {
	instance_destroy(obj_button_mark_as_real);
}