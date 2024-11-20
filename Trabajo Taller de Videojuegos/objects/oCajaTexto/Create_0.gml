depth = -99999


//parametros
ancho_texto = 320
altura_texto = 128
borde = 24
sep_linea = 16
ancho_linea = ancho_texto - borde*2
texto_spr = spr_marco
texto_image = 0
texto_image_spd = 0;


//El texto en si

pagina = 0;
numero_pagina = 0;
texto[0] = " Yo: Necesito saber que fue lo que realmente paso ahi...";
texto[1] = " Yo: Tengo la leve sospecha que... a pesar de sentirme \nsolitario aqui...";
texto[2] = " Yo: Me siento... observado";
largo_texto[0] = array_length(texto[0]);
dibujar_letra = 0;
velocidad_texto = 1;

setup = false;