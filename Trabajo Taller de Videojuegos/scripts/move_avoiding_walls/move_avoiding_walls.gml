function move_avoiding_walls(target_x, target_y, spd) {
    var base_dir = point_direction(x, y, target_x, target_y);
    var move_dir = base_dir;
    var can_move = false;
    
    if (stuck_timer > stuck_threshold) {
        move_dir = base_dir + alternative_paths[current_alt_path];
        if (stuck_timer > stuck_threshold + 15) {
            current_alt_path = (current_alt_path + 1) % array_length(alternative_paths);
            stuck_timer = stuck_threshold;
        }
    }
    
    var move_x = x + lengthdir_x(spd, move_dir);
    var move_y = y + lengthdir_y(spd, move_dir);
    
    if (!place_meeting(move_x, move_y, obj_collision)) {
        x = move_x;
        y = move_y;
        can_move = true;
        stuck_timer = 0;
        current_alt_path = 0;
    } else {
        for (var i = 0; i < array_length(alternative_paths); i++) {
            var alt_dir = base_dir + alternative_paths[i];
            move_x = x + lengthdir_x(spd, alt_dir);
            move_y = y + lengthdir_y(spd, alt_dir);
            
            if (!place_meeting(move_x, move_y, obj_collision)) {
                x = move_x;
                y = move_y;
                can_move = true;
                stuck_timer = 0;
                break;
            }
        }
    }
    
    if (!can_move && is_stuck()) {
        stuck_timer++;
    }
    
    if (can_move) {
        if (move_dir > 135 && move_dir < 225) sprite_index = spr_enemy_left;
        else if (move_dir > 315 || move_dir < 45) sprite_index = spr_enemy_right;
        else if (move_dir > 45 && move_dir < 135) sprite_index = spr_enemy_up;
        else if (move_dir > 225 && move_dir < 315) sprite_index = spr_enemy_down;
    }
    
    return can_move;
}