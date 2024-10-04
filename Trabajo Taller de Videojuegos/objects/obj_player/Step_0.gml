#region Movimiento Player

//Declaracion de botones para mover al jugador
var btn_derecha = keyboard_check(vk_right);
var btn_izquierda = keyboard_check(vk_left);
var btn_arriba = keyboard_check(vk_up);
var btn_abajo = keyboard_check(vk_down);
var btn_correr = keyboard_check(vk_space);

if(btn_derecha) 
{
	if(place_free(x+vel_movimiento,y)){
		x += vel_movimiento;
	}
	
	sprite_index = spr_player_right;
	
	if(btn_correr)
	{
		x += vel_movimiento * vel_correr;
	}
}


if(btn_izquierda)
{
	if(place_free(x-vel_movimiento,y)){
		x -= vel_movimiento;
	}
	
	sprite_index = spr_player_left;
	
	if(btn_correr)
	{
		x -= vel_movimiento * vel_correr;
	}
}

 if(btn_arriba)
{
	if(place_free(x,y-vel_movimiento)){
		y -= vel_movimiento;
	}
	
	sprite_index = spr_player_up;
	
	if(btn_correr)
	{
		y -= vel_movimiento * vel_correr;
	}
	
} 

 if(btn_abajo)
{
	if(place_free(x,y+vel_movimiento)){
		y += vel_movimiento;
	}
	
	sprite_index = spr_player_down;
	
	if(btn_correr)
	{
		y += vel_movimiento * vel_correr;
	}

}



#endregion

#region Mecanica de pacman con hojas de libro

if( instance_number(obj_bookpage) == 0 )
{
	//room_goto_next();  //ir a la siguiente room automatico
	//room_goto(Room2); //ir a la room especificada
	
}

#endregion