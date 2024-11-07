
if(room == Room12_WhiteRoom){
	obj_Camera.sprite_index = spr_black_fond;
	draw_set_font(Font1); //Seleccion de fuente para el HUD
	draw_set_color(c_white); //Seleecion de color para las letras

	draw_text(5,120,"Tiempo Total de juego: " + string(global.temporizador_juego)); //Tiempo total de juego
}