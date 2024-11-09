/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// Draw Event
draw_self();

var target_alpha = 0;
if (distance_to_object(obj_player) < 25) {
    target_alpha = 1;

}

var shake_x = random_range(-shake_amount, shake_amount);
var shake_y = random_range(-shake_amount, shake_amount);


// Suavizar la transición del alpha
alpha_text = lerp(alpha_text, target_alpha, 0.1); // 0.1 es la velocidad del fade, ajústalo si quieres más rápido/lento

if (alpha_text > 0.05) { // Solo dibujamos si hay algo visible
    // Variables para el texto
	
	var text = "Doctor: Buen trabajo Alex, se que es difícil traer a Adam a su habitación cada vez.\nDoctor: ¿mmm?¿Que sucede?\nDoctor: Bueno... Adam ha sido parte del manicomio (Paradise) desde hace varios años, la primera vez que llego aun era bastante joven.....\nDoctor: Si.... así es, al parecer hubo un accidente mientras jugaba en la mansión familiar de su abuelo....\nDoctor: Si... al parecer termino con la muerte del abuelo de Adam, el Sr. William White.... no estoy seguro de lo que sucedió, pero el evento dejo severas secuelas en la mente de Adam.\nDoctor: Si... pero ya no hablemos de esto, es hora de irnos, si es que Adam vuelve ha escapar contare contigo para traerlo de nuevo a su habitación y darle su medicina. ";
    var padding = 6;
    var base_alpha = 0.8;
    
    // Configurar la fuente
    draw_set_font(Font_Interaccion);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    var text_width = string_width(text);
    var text_height = string_height(text);
    var box_width = text_width + (padding * 2);
    var box_height = text_height + (padding * 2);
    
    // Posición del cuadro
    var box_x = (x + sprite_width/2) - (box_width / 2);
    if (room == Room5_Kitchen || room == Room4_Bathom || room == Room3_Library) { var box_y = y - 30 }
	var box_y = y - 60 ;
    
	
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
	
	if ( room == Room3_Library
	  || room == Room4_Bathom
	  || room == Room5_Kitchen)
    {
    // Halo del texto
    draw_set_color(c_white);
    draw_set_alpha(0.3 * alpha_text);
    draw_text(x + sprite_width/2 + 1 + shake_x, box_y + box_height/2 + 1 + shake_y, text);
    draw_text(x + sprite_width/2 - 1 + shake_x, box_y + box_height/2 - 1 + shake_y, text);
    
    // Texto principal
    draw_set_color(c_white);
    draw_set_alpha(0.9 * alpha_text);
    draw_text(x + sprite_width/2 + shake_x, box_y + box_height/2 + shake_y, text);
	} else {
	
	// Halo del texto
    draw_set_color(c_white);
    draw_set_alpha(0.3 * alpha_text);
    draw_text(x + sprite_width/2 + 1, box_y + box_height/2 + 1, text);
    draw_text(x + sprite_width/2 - 1, box_y + box_height/2 - 1, text);
    
    // Texto principal
    draw_set_color(c_white);
    draw_set_alpha(0.9 * alpha_text);
    draw_text(x + sprite_width/2, box_y + box_height/2, text);
	}
    // Resetear configuraciones
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(-1);
	
}