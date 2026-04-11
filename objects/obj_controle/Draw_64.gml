// pega a largura do sprite de vida e multiplica por 2
// isso acontece porque o sprite será desenhado em escala 2
// então precisamos saber o tamanho real que ele terá na tela
var _sprl = sprite_get_width(spr_vida) * 2;


// espaço entre um coração e outro
// quanto maior esse número, maior o espaço entre as vidas
var _buffer = 20;


// pega quantas vidas o personagem tem
// essa variável vem do objeto do personagem
var _vidas = obj_personagem.vida;


// loop que vai repetir o desenho do coração várias vezes
// ele começa em 0 e repete até chegar na quantidade de vidas
for (var i = 0; i < _vidas; i++){

	// desenha o sprite da vida na tela
	draw_sprite_ext(
	
		spr_vida, // sprite que será desenhado
	
		0, // subimagem do sprite (frame da animação)
	
		// posição X onde o coração será desenhado
		// 20 = distância da borda da tela
		// (_sprl * i) = move cada coração pelo tamanho do sprite
		// (_buffer * i) = adiciona espaço entre os corações
		20 + (_sprl * i) + (_buffer * i),
	
		20, // posição Y na tela
	
		2,2, // escala do sprite (2x maior)
	
		0, // rotação do sprite
	
		c_white, // cor do sprite
	
		1 // transparência (1 = totalmente visível)
	);
}

// Só executa esse código se estiver na fase 3
if ( room == rm_fase3){
	 // Arredonda o tempo para cima (ex: 9.2 vira 10)
	 var _tempo_arredondado = ceil(tempo_fase);
	 
	 // Pega o centro horizontal da tela (GUI)
	 var _meio_tela = display_get_gui_width()/2;
	 
	  // Texto fixo "Tempo: "
	  var _texto_palavra = "Tempo: ";
	  
	  // Converte o número do tempo para texto
	  var _texto_numero = string(_tempo_arredondado);
	  
	  // Mede a largura do texto "Tempo: " e multiplica por 2 (por causa da escala)
	  var _largura_palavra = string_width(_texto_palavra)* 2;
	  
	  // Mede a largura do número e multiplica por 2 (por causa da escala
	  var _largura_numero = string_width(_texto_numero)*2;
	  
	  // Soma as duas larguras para saber o tamanho total da frase
	  var _largura_total = _largura_palavra + _largura_numero;
	  
	  // Calcula onde o texto deve começar para ficar centralizado na tela
	  var _x_inicial = _meio_tela - (_largura_total);
	  
	  // Define o alinhamento do texto para começar da esquerda
	  draw_set_halign(fa_left);
	  
	  // Define a cor branca para desenhar "Tempo: "
	  draw_set_color(c_white);
	  
	  // Desenha o texto "Tempo: " na tela com escala 2x
	  draw_text_transformed(_x_inicial, 30, _texto_palavra, 2,2, 0)
	  
	  // Se o tempo for menor ou igual a 10
	  if(_tempo_arredondado <= 10){
		  // Muda a cor para vermelho (alerta)
		  draw_set_color(c_red);
	  }else{
		   // Caso contrário, mantém branco
		   draw_set_color(c_white);
	  }
	  // Desenha o número logo após "Tempo: ", mantendo alinhado
	  draw_text_transformed(_x_inicial + _largura_palavra, 30, _texto_numero, 2, 2, 0);
    
    // Reseta a cor para branco (evita afetar outros desenhos do jogo)
    draw_set_color(c_white);
}



