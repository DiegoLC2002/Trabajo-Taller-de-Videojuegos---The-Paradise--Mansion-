/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// Dibujar la transición negra
if (state == "transition") {
    draw_set_color(c_black);
    draw_set_alpha(alpha_transition);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
}