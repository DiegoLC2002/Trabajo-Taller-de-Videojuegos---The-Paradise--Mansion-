/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if (place_meeting(x-0,y+0,obj_player))
	{
	if (keyboard_check_pressed(ord("E"))){
		
		var _x = 200;
		var _y = 300;
		draw_sprite(textbox,0,_x,_y);
		draw_set_font(Font12);

draw_text(_x + 8 , _y ,"hola");

}

	
	}
