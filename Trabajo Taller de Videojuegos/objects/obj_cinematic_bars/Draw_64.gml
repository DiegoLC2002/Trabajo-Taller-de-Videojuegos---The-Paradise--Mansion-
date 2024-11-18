/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// obj_cinematic_bars Draw GUI Event
draw_set_color(c_black);
// Barra superior
draw_rectangle(0, 0, width, current_height, false);
// Barra inferior
draw_rectangle(0, height - current_height, width, height, false);
draw_set_color(c_white);