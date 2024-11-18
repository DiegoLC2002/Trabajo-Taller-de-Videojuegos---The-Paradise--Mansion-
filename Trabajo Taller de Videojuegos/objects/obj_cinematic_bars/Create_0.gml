/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
width = display_get_gui_width();
height = display_get_gui_height();
bar_height = height * 0.1; // 10% de la altura de la pantalla
animation_speed = 0.05;
current_height = 0;
target_height = bar_height;
estado = "cerrado"; // estados: "cerrado", "abriendo", "abierto", "cerrando"