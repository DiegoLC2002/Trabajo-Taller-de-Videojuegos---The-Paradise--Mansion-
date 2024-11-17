// Función para verificar si un punto es válido (no hay colisiones)
function is_valid_point(check_x, check_y) {
    return !place_meeting(check_x, check_y, obj_collision);
}