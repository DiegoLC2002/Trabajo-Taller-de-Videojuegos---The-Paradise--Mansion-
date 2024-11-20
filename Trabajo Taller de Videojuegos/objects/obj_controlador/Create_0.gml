/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// Variables globales
global.dialog_active = false;
global.current_dialog = noone;


objective_text = "";
box_width = 200;
box_height = 70;
box_x = 10;
box_y = 10;
alpha = 0;  // Empieza invisible
show_objective = true;
cooldown = 180;
current_cooldown = cooldown;

// Variables nuevas para controlar los timers
show_duration = 180;  // Cuánto tiempo se muestra (3 segundos)
current_duration = 0;
fade_speed = 0.05;    // Velocidad del fade
initial_show = true;  // Controla si es la primera vez en la room


if (!variable_global_exists("resueltos")) {
	global.resueltos = ds_map_create();
}