depth = -9999


//parametros
ancho_texto = 320
altura_texto = 128
borde = 16
sep_linea = 16
ancho_linea = ancho_texto - borde*2
texto_spr = Sprite165
texto_image = 0
texto_image_spd = 0;


//El texto en si

pagina = 0;
numero_pagina = 0;
texto[0] = "Hola, esto es una prueba texto largo largo largo largo largo largo largo largo";
texto[1] = "Probando 1... 2... 3...";
texto[2] = "Funciona... creo...";
largo_texto[0] = array_length(texto[0]);
dibujar_letra = 0;
velocidad_texto = 1;

setup = false;