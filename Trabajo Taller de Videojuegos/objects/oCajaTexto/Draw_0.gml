tecla_siguiente = keyboard_check_pressed(vk_enter)

cajatexto_x = camera_get_view_x(view_camera[0]);
cajatexto_y = camera_get_view_y(view_camera[0]) + 172;


if setup == false
	{
	
	setup = true;
	draw_set_font(Font_Interaccion);
	draw_set_color(c_black);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	numero_pagina = array_length(texto)
	
	for (var p = 0 ; p < numero_pagina ; p++)
		{
			
		largo_texto[p] = string_length(texto[p])
		
		texto_x_offset[p] = 144;
			
		}
	}

if dibujar_letra < largo_texto[pagina]
	{
		
	dibujar_letra += velocidad_texto;
	dibujar_letra = clamp(dibujar_letra, 0, largo_texto[pagina])
		
	}
	
if tecla_siguiente
	{
		if dibujar_letra == largo_texto[pagina]
			{
				if pagina < numero_pagina-1
					{
						pagina++;
						dibujar_letra = 0;
					}
				else 
					{
					instance_destroy();
					}
			}
		else
			{
			dibujar_letra = largo_texto[pagina]
			}
		
	}

texto_image += texto_image_spd;
texto_spr_w = sprite_get_width(texto_spr);
texto_spr_h = sprite_get_height(texto_spr);

draw_sprite_ext(texto_spr, texto_image, cajatexto_x + texto_x_offset[pagina], cajatexto_y, ancho_texto/texto_spr_w, altura_texto/texto_spr_h, 0, c_white,1);

var _dibujar_texto = string_copy(texto[pagina], 1, dibujar_letra);
draw_text_ext(cajatexto_x + texto_x_offset[pagina] + borde, cajatexto_y + borde , _dibujar_texto, sep_linea, ancho_texto)








