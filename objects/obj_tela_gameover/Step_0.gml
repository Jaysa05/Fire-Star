/// @description Insert description here
// Se apertar R, reinicia o jogo
// Verifica se a tecla R foi pressionada nesse momento
// Se apertar R, reinicia o jogo
if (keyboard_check_pressed(ord("R"))) {
    
    // Se tem checkpoint ativo, volta para a sala do checkpoint
    if (variable_global_exists("checkpoint_ativo") && global.checkpoint_ativo) {
        room_goto(global.checkpoint_sala);
    } else {
        // Sem checkpoint: reseta tudo e vai para a fase 1
        global.vida_save = 5;
        global.faca_save = 0;
        global.faca_cargas_save = 0;
        global.frutas_save = 0;
        room_goto(rm_fase1);
    }
}
// Se apertar ENTER, vai pro menu (reseta checkpoint também)
if (keyboard_check_pressed(vk_enter)) {
    // Desativa o checkpoint ao voltar pro menu
    if (variable_global_exists("checkpoint_ativo")) {
        global.checkpoint_ativo = false;
    }
    global.vida_save = 5;
    global.faca_save = 0;
    global.faca_cargas_save = 0;
    global.frutas_save = 0;
    room_goto(rm_menu);
}

