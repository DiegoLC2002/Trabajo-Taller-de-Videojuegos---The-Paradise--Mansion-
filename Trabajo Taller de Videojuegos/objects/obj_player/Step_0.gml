#region Movimiento Player

//Declaracion de botones para mover al jugador
var btn_derecha = keyboard_check(vk_right);
var btn_izquierda = keyboard_check(vk_left);
var btn_arriba = keyboard_check(vk_up);
var btn_abajo = keyboard_check(vk_down);
var btn_correr = keyboard_check(vk_space);

if(btn_derecha) 
{
	x += vel_movimiento;
	sprite_index = spr_player_right;
	
	if(btn_correr)
	{
		x += vel_movimiento * 1.5;
	}
	
}
else if(btn_izquierda)
{
	x -= vel_movimiento;
	sprite_index = spr_player_left;
	
	if(btn_correr)
	{
		x -= vel_movimiento * 1.5;
	}
}
else if(btn_arriba)
{
	y -= vel_movimiento;
	sprite_index = spr_player_up;
	
	if(btn_correr)
	{
		y -= vel_movimiento * 2;
	}
}
else if(btn_abajo)
{
	y += vel_movimiento;
	sprite_index = spr_player_down;
	
	if(btn_correr)
	{
		y += vel_movimiento * 2;
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