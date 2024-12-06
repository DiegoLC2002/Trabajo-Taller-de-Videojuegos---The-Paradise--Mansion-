// En el evento Create del personaje
// Variables para el sprint
sprint_energia_maxima = 100;        // Energía máxima
sprint_energia_actual = 100;        // Energía actual
sprint_velocidad = 1.5;               // Velocidad durante el sprint
velocidad_normal = 3;               // Velocidad normal
puede_sprint = true;                // Si puede usar el sprint
sprint_consumo = .5;                 // Cuánta energía consume por step
sprint_recarga = 0.5;               // Cuánta energía recarga por step
energia_minima_requerida = 0; // Energía mínima para poder sprintear
sprint_agotado = false;

persistent = true;
respawn_x = x;
respawn_y = y;
is_dead = false;
usar_checkpoint = false;
checkpoint_valido = false; // Indica si el checkpoint es válido para teletransportar
checkpoint_x = noone;      // Coordenada X inicial para el checkpoint
checkpoint_y = noone; 

vel_movimiento = 1.6;
vel_correr = 1.4;

global.contador_llaves = 0;
global.n_cajas = 0;

contador_carta = 0;

ultima_direccion = "arriba";

var Iz_true, Der_true, Arr_true, Abj_true = noone

if (room == Room0_Menu || room == Room12_WhiteRoom || room == Room16_Final) && instance_exists(obj_player)
{
	instance_destroy();
	
}	


