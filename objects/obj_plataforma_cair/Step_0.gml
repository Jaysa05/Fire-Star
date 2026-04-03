// Executa apenas uma vez no início para definir o ponto de partida
if (!iniciado) {
	if (comecar_embaixo == true) {
		estado = 2; // Começa no estado "parado embaixo"
		y = ystart + limite_y;
	} else {
		estado = 0; // Começa no estado "parado em cima"
		y = ystart;
	}
	iniciado = true;
}

var _move_y = 0; // Quantidade que a plataforma vai se mover neste frame

// Máquina de estados para definir o movimento (_move_y)
switch (estado) {

	case 0: // Parada em cima
		timer++;
		if (timer >= espera_max){
			timer = 0;
			estado = 1; // Começa a descer
		}
	break;
	
	case 1: // Descendo
		_move_y = velocidade;
		
		// Se atingir ou passar o limite inferior
		if (y + _move_y >= ystart + limite_y){
			_move_y = (ystart + limite_y) - y; // Move apenas o necessário para chegar no limite
			estado = 2; // Chegou embaixo
			timer = 0;
		}
	break;
	
	case 2: // Parado embaixo
		timer++;
		// (A morte agora acontece naturalmente pelo limite da fase no personagem)

		if (timer >= espera_max){
			timer = 0;
			estado = 3; // Começa a subir
		}
	break;
	
	case 3: // Subindo
		_move_y = -velocidade;
		
		// Se atingir ou passar o limite superior
		if (y + _move_y <= ystart){
			_move_y = ystart - y; // Move apenas o necessário para chegar no limite
			estado = 0; // Chegou em cima
			timer = 0;
		}
	break;
}

// MOVIMENTAÇÃO DO PERSONAGEM JUNTO COM A PLATAFORMA
// Verificamos se o personagem está logo acima da plataforma antes de movê-la
if (place_meeting(x, y - 1, obj_personagem)) {
	
	// Antes de mover o personagem, verificamos se ele não vai colidir com uma parede em cima
	with (obj_personagem) {
		if (!place_meeting(x, y + _move_y, obj_parede)) {
			y += _move_y;
		}
	}
}

// Aplica o movimento na própria plataforma
y += _move_y;