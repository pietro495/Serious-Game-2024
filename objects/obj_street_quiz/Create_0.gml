/// @description Setup

nextQuestionBtn = noone;

// Email content
padding = 16;
textWidth = 600;
lineHeight = 28;
currentSms = 0;

global.playerControl = false;

if (instance_exists(obj_street_blackboard)) {
	instance_destroy(obj_street_blackboard);
}
if (instance_exists(obj_button_pw1)) {
	instance_destroy(obj_button_pw1);
}
if (instance_exists(obj_button_pw2)) {
	instance_destroy(obj_button_pw2);
}
if (instance_exists(obj_button_pw3)) {
	instance_destroy(obj_button_pw3);
}
if (instance_exists(obj_button_pw4)) {
	instance_destroy(obj_button_pw4);
}
if (instance_exists(obj_button_pw5)) {
	instance_destroy(obj_button_pw5);
}
if (instance_exists(obj_button_pw6)) {
	instance_destroy(obj_button_pw6);
}
if (instance_exists(obj_button_pw7)) {
	instance_destroy(obj_button_pw7);
}
if (instance_exists(obj_button_pw8)) {
	instance_destroy(obj_button_pw8);
}
if (instance_exists(obj_button_pw9)) {
	instance_destroy(obj_button_pw9);
}
if (instance_exists(obj_button_pw10)) {
	instance_destroy(obj_button_pw10);
}
if (instance_exists(obj_button_pw11)) {
	instance_destroy(obj_button_pw11);
}
if (instance_exists(obj_button_pw12)) {
	instance_destroy(obj_button_pw12);
}
if (instance_exists(obj_button_pw_next)) {
	instance_destroy(obj_button_pw_next);
}

show_quiz_question("street");