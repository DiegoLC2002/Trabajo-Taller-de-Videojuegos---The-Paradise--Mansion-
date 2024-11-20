// En el evento Draw GUI del personaje
if (!instance_exists(oJumpScare) && !instance_exists(oMenuMuerte) && !is_dead) {  // Añadimos !is_dead a la condición
    var barra_x = 530;
    var barra_y = display_get_gui_height()-40;
    var barra_ancho = 90;
    var barra_alto = 15;

    // Dibujar borde negro
    draw_set_color(c_black);
    draw_rectangle(barra_x, barra_y, barra_x + barra_ancho, barra_y + barra_alto, false);

    // Calcular ancho de la barra de energía
    var porcentaje_energia = (sprint_energia_actual / sprint_energia_maxima);
    var ancho_barra = barra_ancho * porcentaje_energia;

    // Color de la barra según el nivel de energía y estado
    if (sprint_agotado) {
        draw_set_color(c_dkgrey);
    } else if (porcentaje_energia > 0.7) {
        draw_set_color(c_white);
    } else if (porcentaje_energia > 0.3) {
        draw_set_color(c_gray);
    } else {
        draw_set_color(c_dkgray);
    }

    // Dibujar la barra de energía
    draw_rectangle(barra_x, barra_y, barra_x + ancho_barra, barra_y + barra_alto, false);

    // Texto de Estamina y Agotado
    draw_set_font(Font_Interaccion);
    draw_set_color(c_white);
    
    if (sprint_agotado) {
        draw_text(barra_x + 16 , barra_y - 20, "AGOTADO");
    } else {
        // Aseguramos que el texto de estamina esté en la misma posición
        draw_set_halign(fa_left); // Asegura alineación izquierda
        draw_set_valign(fa_top);  // Asegura alineación superior
        draw_text(barra_x, barra_y - 20, "ESTAMINA: " + string(round(sprint_energia_actual)) + "%");
    }

    // Resetear color y alineación
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}