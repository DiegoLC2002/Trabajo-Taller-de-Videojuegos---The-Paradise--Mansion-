
global.player_last_position_x = x;
global.player_last_position_y = y;


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


else if(btn_izquierda)
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

else if(btn_arriba)
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

else if(btn_abajo)
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

if (is_dead) {
    // Buscar el punto de respawn en la sala actual
    var respawn_point = instance_nearest(0, 0, obj_respawn);
    if (respawn_point != noone) {
        x = respawn_point.x;
        y = respawn_point.y;
    }
    is_dead = false;
}
