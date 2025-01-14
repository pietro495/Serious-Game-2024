/// @description Change sprite

switch (global.current_question) {
	case 0:
		sprite_index = spr_quiz_pw_question1;
		break;
	case 1:
		sprite_index = spr_quiz_pw_question2;
		break;
	case 2:
		sprite_index = spr_quiz_pw_question3;
		break;
	case 3:
		sprite_index = spr_quiz_pw_question4;
		break;
	default:
		break;
}