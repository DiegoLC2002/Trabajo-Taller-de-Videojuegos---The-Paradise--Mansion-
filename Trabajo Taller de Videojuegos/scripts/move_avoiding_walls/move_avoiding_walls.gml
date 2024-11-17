function move_avoiding_walls(target_x, target_y, spd) {
    var dir = point_direction(x, y, target_x, target_y);
    var can_move = true;
    
    // Verificar si hay pared directamente en frente
    var ahead_x = x + lengthdir_x(check_distance, dir);
    var ahead_y = y + lengthdir_y(check_distance, dir);
    
    if (place_meeting(ahead_x, ahead_y, obj_collision)) {
        // Si hay pared, intentar moverse a la derecha o izquierda
        var left_x = x + lengthdir_x(check_distance, dir - 45);
        var left_y = y + lengthdir_y(check_distance, dir - 45);
        var right_x = x + lengthdir_x(check_distance, dir + 45);
        var right_y = y + lengthdir_y(check_distance, dir + 45);
        
        // Comprobar qué dirección está libre y es mejor
        var can_left = !place_meeting(left_x, left_y, obj_collision);
        var can_right = !place_meeting(right_x, right_y, obj_collision);
        
        if (can_left && can_right) {
            // Si ambos lados están libres, elegir el más cercano al objetivo
            var dist_left = point_distance(left_x, left_y, target_x, target_y);
            var dist_right = point_distance(right_x, right_y, target_x, target_y);
            dir += (dist_left < dist_right) ? -45 : 45;
        } else if (can_left) {
            dir -= 45;
        } else if (can_right) {
            dir += 45;
        } else {
            can_move = false;
        }
    }
    
    // Si podemos movernos, actualizamos la posición
    if (can_move) {
        var move_x = x + lengthdir_x(spd, dir);
        var move_y = y + lengthdir_y(spd, dir);
        
        // Verificación final de colisión
        if (!place_meeting(move_x, move_y, obj_collision)) {
            x = move_x;
            y = move_y;
            
            // Actualizar sprite según la dirección
            if (dir > 135 && dir < 225) sprite_index = spr_enemy_left;
            else if (dir > 315 || dir < 45) sprite_index = spr_enemy_right;
            else if (dir > 45 && dir < 135) sprite_index = spr_enemy_up;
            else if (dir > 225 && dir < 315) sprite_index = spr_enemy_down;
        }
    }
}
