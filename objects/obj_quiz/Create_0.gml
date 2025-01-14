/// @description Variables
global.quiz_questions = ds_map_create();

global.quiz_questions[? "omnitech"] = [
    {question_sprite: spr_phishing_minigame_question, options_sprites: [spr_omnitech_quiz_q1_a3, spr_omnitech_quiz_q1_a1, spr_omnitech_quiz_q1_a2, spr_omnitech_quiz_q1_a4], correct_option: 1},
    {question_sprite: spr_phishing_minigame_question, options_sprites: [spr_omnitech_quiz_q2_a2, spr_omnitech_quiz_q2_a4, spr_omnitech_quiz_q2_a3, spr_omnitech_quiz_q2_a1], correct_option: 3}
];

global.quiz_questions[? "johnsmith"] = [
    {question_sprite: spr_phishing_minigame_johnsmith_question, options_sprites: [spr_bar_quiz_q1_a3, spr_bar_quiz_q1_a1, spr_bar_quiz_q1_a2, spr_bar_quiz_q1_a4], correct_option: 2},
    {question_sprite: spr_phishing_minigame_johnsmith_question, options_sprites: [spr_bar_quiz_q2_a2, spr_bar_quiz_q2_a4, spr_bar_quiz_q2_a1, spr_bar_quiz_q2_a3], correct_option: 0},
    {question_sprite: spr_phishing_minigame_johnsmith_question, options_sprites: [spr_bar_quiz_q3_a4, spr_bar_quiz_q3_a2, spr_bar_quiz_q3_a3, spr_bar_quiz_q3_a1], correct_option: 1},
    {question_sprite: spr_phishing_minigame_johnsmith_question, options_sprites: [spr_bar_quiz_q4_a3, spr_bar_quiz_q4_a2, spr_bar_quiz_q4_a4, spr_bar_quiz_q4_a1], correct_option: 3}
];

global.quiz_questions[? "street"] = [
    {question_sprite: spr_quiz_pw_question1, options_sprites: [spr_quiz_pw_q1_a2, spr_quiz_pw_q1_a1, spr_quiz_pw_q1_a4, spr_quiz_pw_q1_a3], correct_option: 0},
    {question_sprite: spr_quiz_pw_question2, options_sprites: [spr_quiz_pw_q2_a1, spr_quiz_pw_q2_a4, spr_quiz_pw_q2_a1, spr_quiz_pw_q2_a2], correct_option: 3},
    {question_sprite: spr_quiz_pw_question3, options_sprites: [spr_quiz_pw_q3_a4, spr_quiz_pw_q3_a2, spr_quiz_pw_q3_a3, spr_quiz_pw_q3_a1], correct_option: 3},
    {question_sprite: spr_quiz_pw_question4, options_sprites: [spr_quiz_pw_q4_a3, spr_quiz_pw_q4_a2, spr_quiz_pw_q4_a4, spr_quiz_pw_q4_a1], correct_option: 1}
];

global.quiz_questions[? "final"] = [
    {question_sprite: spr_quiz_final_question1, options_sprites: [spr_quiz_final_q1_a1, spr_quiz_final_q1_a2, spr_quiz_final_q1_a3, spr_quiz_final_q1_a4], correct_option: 1},
    {question_sprite: spr_quiz_final_question2, options_sprites: [spr_quiz_final_q2_a1, spr_quiz_final_q2_a2, spr_quiz_final_q2_a3, spr_quiz_final_q2_a4], correct_option: 3},
	{question_sprite: spr_quiz_final_question3, options_sprites: [spr_quiz_final_q3_a1, spr_quiz_final_q3_a2, spr_quiz_final_q3_a3, spr_quiz_final_q3_a4], correct_option: 1},
	{question_sprite: spr_quiz_final_question4, options_sprites: [spr_quiz_final_q4_a1, spr_quiz_final_q4_a2, spr_quiz_final_q4_a3, spr_quiz_final_q4_a4], correct_option: 2},
	{question_sprite: spr_quiz_final_question5, options_sprites: [spr_quiz_final_q5_a1, spr_quiz_final_q5_a2, spr_quiz_final_q5_a3, spr_quiz_final_q5_a4], correct_option: 0},
	{question_sprite: spr_quiz_final_question6, options_sprites: [spr_quiz_final_q6_a1, spr_quiz_final_q6_a2, spr_quiz_final_q6_a3, spr_quiz_final_q6_a4], correct_option: 1},
	{question_sprite: spr_quiz_final_question7, options_sprites: [spr_quiz_final_q7_a1, spr_quiz_final_q7_a2, spr_quiz_final_q7_a3, spr_quiz_final_q7_a4], correct_option: 2},
	{question_sprite: spr_quiz_final_question8, options_sprites: [spr_quiz_final_q8_a1, spr_quiz_final_q8_a2, spr_quiz_final_q8_a3, spr_quiz_final_q8_a4], correct_option: 1},
	{question_sprite: spr_quiz_final_question9, options_sprites: [spr_quiz_final_q9_a1, spr_quiz_final_q9_a2, spr_quiz_final_q9_a3, spr_quiz_final_q9_a4], correct_option: 0},
	{question_sprite: spr_quiz_final_question10, options_sprites: [spr_quiz_final_q10_a1, spr_quiz_final_q10_a2, spr_quiz_final_q10_a3, spr_quiz_final_q10_a4], correct_option: 1}
];

global.quizScore = 0;
global.current_question = 0; // Indice della domanda corrente			// Punteggio iniziale
global.answer_objects = []; // Array per tracciare le caselle di risposta attive
global.wrong_answer = [];
global.current_answers = [];