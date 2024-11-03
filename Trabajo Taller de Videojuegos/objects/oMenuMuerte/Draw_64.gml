draw_set_alpha(1);  // Siempre totalmente visible

// Dibuja el fondo negro
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

// Configura el texto
draw_set_font(Font_Die_small);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Efecto de glitch del texto con escala
if (text_visible) {
    // Efecto de glitch
    for(var i = 0; i < 3; i++) {
        var off_x = random_range(-2, 2);
        var off_y = random_range(-2, 2);
        
        // Sombra roja
        draw_set_color(c_red);
        draw_text_transformed(display_get_gui_width()/2 + off_x + 2, 
                            display_get_gui_height()/2 + off_y + 2, 
                            "YOU DIED",
                            scale, scale, 0);
        
        // Texto principal
        draw_set_color(c_white);
        draw_text_transformed(display_get_gui_width()/2 + off_x, 
                            display_get_gui_height()/2 + off_y, 
                            "YOU DIED",
                            scale, scale, 0);
    }
    
    // Texto de reinicio
    if (can_restart) {
        draw_set_color(c_gray);
        draw_set_font(Font_Die);
        draw_text_transformed(display_get_gui_width()/2, 
                            display_get_gui_height()/2 + 50 * scale, 
                            "Press R to restart",
                            scale * 0.8, scale * 0.8, 0);
    }
}
