/// @description Insert description here
event_inherited(); 
// 1. Caminha SOMENTE para o lado esquerdo eternamente
x = x - 1;// Velocidade da caminhada
image_xscale = 1; // Vira o rostinho para a esquerda
// 2. O Sensor de Borda do Mapa
// Quando o X do slime for menor que 0 (Saiu da tela pela esquerda)
if(x < - 25) {
	// TELEPORTE! Traz o slime instantaneamente para as coordenadas do começo
	x = ponto_de_partida
}


