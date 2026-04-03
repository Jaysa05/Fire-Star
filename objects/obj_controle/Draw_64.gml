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

