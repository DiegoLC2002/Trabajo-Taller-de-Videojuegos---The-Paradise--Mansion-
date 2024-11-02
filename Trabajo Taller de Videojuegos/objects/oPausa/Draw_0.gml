// Draw Event:
if (pausa) {
    // Dibuja un overlay oscuro en toda la pantalla
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, 9999, 9999, false);
    draw_set_alpha(1);
    
    // Calcula dimensiones del menú
    alto = op_borde*2 + sprite_get_height(fontBorder) + (op_largo - 1)*(op_espacio - 5);
    
    // Obtiene las coordenadas de la vista de la cámara
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
    var cam_width = 640;
    var cam_height = 360;
    
    // Centra el menú en el área de la cámara (640x360)
    var menu_x = cam_x + (cam_width - ancho) / 2;
    var menu_y = cam_y + (cam_height - alto) / 2;
    
    // Dibuja el fondo del menú
    draw_sprite_ext(sprite_index, image_index, menu_x, menu_y, 
                   ancho/sprite_width, alto/sprite_height, 0, c_white, 1);
    
    // Configura el texto
    draw_set_font(Font12);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    
    // Dibuja las opciones
    for (var i = 0; i < op_largo; i++) {
        var color = c_black;
        if (pos == i) {color = c_red;}
        draw_text_color(menu_x + op_borde, 
                       menu_y + op_borde + op_espacio*i,
                       opcion[nivel_menu,i],
                       color, color, color, color, 1);
    }
}