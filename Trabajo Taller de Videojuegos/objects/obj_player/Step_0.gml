#region Movimiento Player

//Declaracion de botones para mover al jugador
var btn_derecha = keyboard_check(vk_right);
var btn_izquierda = keyboard_check(vk_left);
var btn_arriba = keyboard_check(vk_up);
var btn_abajo = keyboard_check(vk_down);

if(btn_derecha) 
{
	x += vel_movimiento;
	sprite_index = spr_player_right;
	
}
else if(btn_izquierda)
{
	x -= vel_movimiento;
	sprite_index = spr_player_left;
}
else if(btn_arriba)
{
	y -= vel_movimiento;
	sprite_index = spr_player_up;
}
else if(btn_abajo)
{
	y += vel_movimiento;
	sprite_index = spr_player_down;
}

#endregion