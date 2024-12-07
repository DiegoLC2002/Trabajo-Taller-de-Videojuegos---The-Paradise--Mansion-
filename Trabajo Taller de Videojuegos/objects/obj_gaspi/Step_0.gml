/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (obj_player.y < y ){ obj_player.depth = depth + 1}
if (obj_player.y > y ){ obj_player.depth = depth - 1}


// En el Step Event del objeto fantasma
var dist = point_distance(x, y, obj_player.x, obj_player.y);
var target_alpha;
var max_distance = 125; // Distancia máxima donde se ve el efecto
var min_distance = 50;  // Distancia donde el efecto es máximo


if (dist <= min_distance) {
    effect_strength = 1; // Efecto al máximo
}
else if (dist >= max_distance) {
    effect_strength = 0; // Sin efecto
}
else {
    // Calcula la intensidad basada en la distancia
    effect_strength = 1 - ((dist - min_distance) / (max_distance - min_distance));
}



if (dist <= fade_distance) {
    // Calcula la opacidad basada en la distancia
    // Cuando más cerca esté el jugador, más visible será
    target_alpha = 1 - (dist / fade_distance);
	
} else {
    // Si está fuera del rango, debe ser invisible
    target_alpha = 0;
}

// Suaviza la transición de la opacidad
image_alpha = lerp(image_alpha, target_alpha, 0.1);

// Asegura que el valor de alpha esté entre 0 y 1
image_alpha = clamp(image_alpha, 0, 1);


