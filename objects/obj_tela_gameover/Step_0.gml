/// @description Insert description here
// Se apertar R, reinicia o jogo
// Verifica se a tecla R foi pressionada nesse momento
if (keyboard_check_pressed(ord("R"))){
	
	// Reseta a vida do jogador para o valor padrão (5)
	global.vida_save = 5;
	
	// Remove a faca (0 = não possui)
	global.faca_save = 0;
	
	// Zera as cargas da faca
	global.faca_cargas_save = 0;
	
	// Vai para a primeira fase
	room_goto(rm_fase1);
	
	// Verifica se a tecla ENTER foi pressionada
	if (keyboard_check_pressed(vk_enter)){
		// Vai para o menu principal
		room_goto(rm_menu);
	}

}

