/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// En un objeto controlador (obj_game_controller) - Create Event
// O en el primer room del juego

// Crear el grid
var cell_width = 64;  // Tamaño de cada celda
var cell_height = 64;

// Calcular cuántas celdas necesitamos
var h_cells = room_width div cell_width;
var v_cells = room_height div cell_height;

// Crear el grid
global.grid = mp_grid_create(0, 0, h_cells, v_cells, cell_width, cell_height);

// Añadir las paredes/obstáculos al grid
mp_grid_add_instances(global.grid, obj_collision, true);


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