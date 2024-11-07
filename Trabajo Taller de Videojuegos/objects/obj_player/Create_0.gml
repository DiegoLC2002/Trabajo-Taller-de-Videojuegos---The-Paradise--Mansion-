persistent = true;
respawn_x = x;
respawn_y = y;
is_dead = false;
usar_checkpoint = false;
checkpoint_valido = false; // Indica si el checkpoint es válido para teletransportar
checkpoint_x = noone;      // Coordenada X inicial para el checkpoint
checkpoint_y = noone; 

vel_movimiento = 1.6;
vel_correr = .7;

global.contador_llaves = 0;
global.n_cajas = 0;

contador_carta = 0;

ultima_direccion = "arriba";

var Iz_true, Der_true, Arr_true, Abj_true = noone

if (room == Room0_Menu || room == Room12_WhiteRoom) && instance_exists(obj_player)
{
	instance_destroy();
	
}	

