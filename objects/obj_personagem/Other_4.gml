/// @description Posicionamento ao entrar na fase

// Detecta se entramos na Fase 3 (tentamos pelo nome ou pelo ID)
var _nome_sala = room_get_name(room);

if (_nome_sala == "rm_fase3") {
	
	// POSIÇÃO DE SEGURANÇA: Nasce no ar (y=200) para cair no chão suavemente
	x = 32; 
	y = 200; 
	
	// RESET TOTAL DE FÍSICA
	vveloc = 0;
	hveloc = 0;
	gravidade = 0.2; 
	morreu = false;  // SUPREMA BLINDAGEM: Cancela o estado de morte
	
	// RESTAURAÇÃO DE VIDA SEGURA (Força 5 vidas no spawn)
	global.vida_save = 5;
	vida = global.vida_save;
	
	// INVENCIBILIDADE TEMPORÁRIA: 1 segundo de segurança ao nascer
	alarm[0] = 60; 
	
	// Restaurar itens
	faca = global.faca_save;
	faca_cargas = global.faca_cargas_save;
	
	show_debug_message("Personagem ressuscitado e spawnado na Fase 3 com imunidade temporária.");
}
