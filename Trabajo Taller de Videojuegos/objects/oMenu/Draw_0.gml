/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

alto = op_borde*2 + sprite_get_height(fontBorder) + (op_largo - 1)*op_espacio;



draw_sprite_ext(sprite_index, image_index, x, y, ancho/sprite_width, alto/sprite_height, 0, c_white, 1);

draw_set_font(Font13);
draw_set_valign(fa_top)
draw_set_halign(fa_left)

for (var i = 0 ; i < op_largo ; i++)
	{
	var color = c_black;
	if pos == i {color = c_red};
	draw_text_color(x+op_borde, y+op_borde + op_espacio*i , opcion[nivel_menu,i], color, color, color, color, 1);
	
	}