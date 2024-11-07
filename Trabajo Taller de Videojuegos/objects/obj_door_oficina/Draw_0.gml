// Draw Event
draw_self();

var target_alpha = 0;
if (distance_to_object(obj_player) < 15 && !is_open) {
    target_alpha = 1;
}

// Suavizar la transición del alpha
alpha_text = lerp(alpha_text, target_alpha, 0.1); // 0.1 es la velocidad del fade, ajústalo si quieres más rápido/lento

if (alpha_text > 0.05) { // Solo dibujamos si hay algo visible
    // Variables para el texto
	
	var text = "Abrir puerta";
	if (room == Room1_Outside) { var text = "Presiona E para usar la puerta"; }
	if (room == Room6_SecondFloor && global.contador_llaves == 7 && (obj_door.x == 480 && obj_door.y == 352)) { var text = "Entrar a la oficina"; }
	else if (room == Room6_SecondFloor && global.contador_llaves == 6 && (obj_door.x == 480 && obj_door.y == 352)) { var text = "Necesitas 1 llave mas para acceder\na la oficina"; }
	else if (room == Room6_SecondFloor && global.contador_llaves == 5 && (obj_door.x == 480 && obj_door.y == 352)) { var text = "Necesitas 2 llaves para acceder\na la oficina"; }
	else if (room == Room6_SecondFloor && global.contador_llaves == 4 && (obj_door.x == 480 && obj_door.y == 352)) { var text = "Necesitas 3 llaves para acceder\na la oficina"; }
	else if (room == Room6_SecondFloor && global.contador_llaves == 3 && (obj_door.x == 480 && obj_door.y == 352)) { var text = "Necesitas 4 llaves para acceder\na la oficina"; }
	else if (room == Room6_SecondFloor && global.contador_llaves == 2 && (obj_door.x == 480 && obj_door.y == 352)) { var text = "Necesitas 5 llaves para acceder\na la oficina"; }
	else if (room == Room6_SecondFloor && global.contador_llaves == 1 && (obj_door.x == 480 && obj_door.y == 352)) { var text = "Necesitas 6 llaves para acceder\na la oficina"; }
	else if (room == Room6_SecondFloor && global.contador_llaves == 0 && (obj_door.x == 480 && obj_door.y == 352)) { var text = "Necesitas las 7 llaves para acceder\na la oficina"; }
	
    var padding = 6;
    var base_alpha = 0.8;
    
    // Configurar la fuente
    draw_set_font(Font_Interaccion);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	depth = -9999;
    
    var text_width = string_width(text);
    var text_height = string_height(text);
    var box_width = text_width + (padding * 2);
    var box_height = text_height + (padding * 2);
    
    // Posición del cuadro
    var box_x = (x + sprite_width/2) - (box_width / 2);
    var box_y = y - 40;
    
	
    // Efecto de sombra
    draw_set_color(c_black);
    draw_set_alpha(0.7 * alpha_text);
    draw_roundrect(box_x + 3, box_y + 3, box_x + box_width + 3, box_y + box_height + 3, false);
    
    // Fondo
    draw_set_color(make_color_rgb(20, 20, 25));
    draw_set_alpha(base_alpha * alpha_text);
    draw_roundrect(box_x, box_y, box_x + box_width, box_y + box_height, false);
    
    // Borde
    draw_set_color(make_color_rgb(70, 70, 80));
    draw_set_alpha((base_alpha * 0.8) * alpha_text);
    draw_roundrect(box_x, box_y, box_x + box_width, box_y + box_height, true);
    
    // Halo del texto
    draw_set_color(c_white);
    draw_set_alpha(0.3 * alpha_text);
    draw_text(x + sprite_width/2 + 1, box_y + box_height/2 + 1, text);
    draw_text(x + sprite_width/2 - 1, box_y + box_height/2 - 1, text);
    
    // Texto principal
    draw_set_color(c_white);
    draw_set_alpha(0.9 * alpha_text);
    draw_text(x + sprite_width/2, box_y + box_height/2, text);
    
    // Resetear configuraciones
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(-1);
}