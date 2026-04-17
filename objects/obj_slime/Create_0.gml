/// @description Insert description here
// 1. CHECANDO A MORTE COM EXPLOSÃO NATIVA:
// 1. CHECANDO A MORTE:
// Verifica se a vida do inimigo chegou a 0 ou menos (morreu)
if (vida <= 0) {
    
    // Verifica se o alarm[1] ainda não está ativo (tempo <= 0)
    if (alarm[1] <= 0) {
        
        // Ativa o alarm[1] com 20 frames
        // Esse tempo pode ser usado para um efeito visual (ex: flash branco)
        alarm[1] = 20; 
    }
	
	image_speed = 3; // quanto maior, mais rápido
    
    // Executa o código do objeto pai
    // (normalmente usado para lidar com a morte, como virar fumaça ou destruir)
    event_inherited(); 
    
    // Interrompe o restante do código deste evento
    // Evita que outras ações sejam executadas após a morte
    exit;
}

event_inherited(); 
item_drop = noone; // Continua sem dropar itens 

// Salva no HD do GameMaker o exato X inicial onde você colocou ele na Room
ponto_de_partida = x;
