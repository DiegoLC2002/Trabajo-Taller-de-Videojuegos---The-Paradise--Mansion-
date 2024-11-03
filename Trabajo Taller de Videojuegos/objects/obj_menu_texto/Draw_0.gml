
#region
/*draw_self();

draw_set_font(Font12);
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x,y,texto);*/
#endregion


// En el evento Draw
var shake_x = random_range(-shake_amount, shake_amount);
var shake_y = random_range(-shake_amount, shake_amount);

// Configurar el texto
draw_set_font(Font1);  // Usa tu fuente preferida
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Calcular dimensiones de la caja
var box_width = text_width + (padding * 2);
var box_height = string_height_ext(title_text, -1, text_width) + (padding * 2);
var box_x = (room_width - box_width) / 2 + shake_x;
var box_y = (room_height - box_height) / 6 + shake_y;  // Posicionado en el tercio superior

// Dibujar sombra de la caja
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(box_x + 4, box_y + 4, box_x + box_width + 4, box_y + box_height + 4, false);

// Dibujar bordes (más gruesos para el título)
for(var i = 0; i < 3; i++) {
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(box_x - i, box_y - i, box_x + box_width + i, box_y + box_height + i, true);
}

// Dibujar caja principal
draw_set_color(c_dkgray);
draw_set_alpha(0.9);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);

// Dibujar el título con efecto de sombra
var text_x = box_x + box_width/2;
var text_y = box_y + box_height/2;

// Sombra del texto
draw_set_color(c_black);
draw_set_alpha(1);
draw_text_ext(text_x + 2, text_y + 2, title_text, -1, text_width);

// Texto principal
draw_set_color(c_white);
draw_text_ext(text_x, text_y, title_text, -1, text_width);

// Detalles decorativos en las esquinas
var corner_size = 10;
for(var i = 0; i < 4; i++) {
    var cx = box_x + (i % 2) * box_width;
    var cy = box_y + floor(i/2) * box_height;
    draw_set_color(c_white);
    draw_set_alpha(0.5);
    draw_line(cx - (i % 2) * corner_size, cy, cx + (!i % 2) * corner_size, cy);
    draw_line(cx, cy - (i < 2) * corner_size, cx, cy + (i >= 2) * corner_size);
}

// Resetear configuraciones
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);