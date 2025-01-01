/// @description Insert description here
// You can write your code in this editor
global.quiz_questions=
[{  question_sprite:spr_question_1,
	options_sprites:[spr_option_0,spr_option_1],
	correct_option:0
},
{	question_sprite:spr_question_2,
	options_sprites:[spr_option_3,spr_option_4],
	correct_option:1
}

];

current_question = 0; // Indice della domanda corrente
score = 0;				// Punteggio iniziale
answer_objects = []; // Array per tracciare le caselle di risposta attive

