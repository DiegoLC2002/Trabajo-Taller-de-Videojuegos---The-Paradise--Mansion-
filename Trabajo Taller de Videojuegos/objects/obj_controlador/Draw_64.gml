

// Draw GUI Event
if (objective_text != "" && alpha > 0) {
    // Fondo
    draw_set_alpha(alpha * 0.7);
    draw_set_color(c_black);
    draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);
    
    // Borde
    draw_set_alpha(alpha);
    draw_set_color(c_white);
    draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, true);
    
    // Configuración del texto
    draw_set_font(Font_Die);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    
    // Texto de objetivo
    draw_text(box_x + 10, box_y + 10, "OBJETIVO:");
    draw_text_ext(box_x + 10, box_y + 30, objective_text, 15, box_width - 20);
    
    draw_set_alpha(1);
}