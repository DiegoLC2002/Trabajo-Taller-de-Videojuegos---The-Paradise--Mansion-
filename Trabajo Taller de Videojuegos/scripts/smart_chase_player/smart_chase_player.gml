function smart_chase_player() {
    var target_x = obj_player.x;
    var target_y = obj_player.y;
    
    // Recalcular el path periódicamente o si el jugador se ha movido significativamente
    if (recalculate_path_timer <= 0) {
        // Limpiar el path anterior
        path_clear_points(path);
        
        // Calcular nuevo path
        if (mp_grid_path(grid, path, x, y, target_x, target_y, true)) {
            path_start(path, vel_movimiento, path_action_stop, false);
            path_point_current = 0;
            path_point_count = path_get_number(path);
        } else {
            // Si no se puede encontrar un path, intentar moverse hacia el jugador evitando obstáculos
            var ang = point_direction(x, y, target_x, target_y);
            var test_distance = 32;
            
            for (var i = 0; i < 360; i += 45) {
                var test_x = x + lengthdir_x(test_distance, ang + i);
                var test_y = y + lengthdir_y(test_distance, ang + i);
                
                if (!place_meeting(test_x, test_y, obj_collision)) {
                    move_towards_point(test_x, test_y, vel_movimiento);
                    break;
                }
            }
        }
        
        recalculate_path_timer = recalculate_path_delay;
    } else {
        recalculate_path_timer--;
    }
    
    // Actualizar la sprite basada en la dirección del movimiento
    if (speed > 0) {
        var move_dir = direction;
        if (move_dir > 135 && move_dir < 225) sprite_index = spr_enemy_left;
        else if (move_dir > 315 || move_dir < 45) sprite_index = spr_enemy_right;
        else if (move_dir > 45 && move_dir < 135) sprite_index = spr_enemy_up;
        else if (move_dir > 225 && move_dir < 315) sprite_index = spr_enemy_down;
    }
}