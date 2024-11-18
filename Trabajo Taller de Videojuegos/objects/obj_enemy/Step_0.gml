
#region


// Este código va en el evento Step
if distance_to_object(obj_player) < 156 {
    // Tu código existente para persecución
    if !effect_active {
        layer_set_visible("Effect_2", true);
        effect_active = true;
    }
    
    state = "chasing";
    last_known_x = obj_player.x;
    last_known_y = obj_player.y;
    chase_timer = 0;
    
    if point_direction(x,y,obj_player.x,obj_player.y) > 0 && point_direction(x,y,obj_player.x,obj_player.y) < 360 {
        move_towards_point(obj_player.x,obj_player.y,vel_movimiento + .25);
		
		if (place_meeting(x + hspeed, y + vspeed, obj_collision)) {
        // Check if we're stuck
        if (abs(hspeed) < stuck_threshold && abs(vspeed) < stuck_threshold) {
            // Try to find an alternative path
            if (create_avoidance_path()) {
                // Successfully found an alternative route
                move_towards_point(
                    x + lengthdir_x(vel_movimiento * 2, avoid_direction), 
                    y + lengthdir_y(vel_movimiento * 2, avoid_direction), 
                    vel_movimiento + 0.25);
            }
        }
    }
    
    // If in avoidance mode, continue alternative path
    if (avoid_timer > 0) {
        move_towards_point(
            x + lengthdir_x(vel_movimiento * 2, avoid_direction), 
            y + lengthdir_y(vel_movimiento * 2, avoid_direction), 
            vel_movimiento + 0.25
        );
        avoid_timer--;
    }
}
        
        if (obj_player.y < y) { obj_player.depth = depth + 1; }
        if (obj_player.y > y) { obj_player.depth = depth - 1; }
                            
        // Tu código existente para las direcciones del sprite
        if point_direction(x,y,obj_player.x,obj_player.y) > 135 && point_direction(x,y,obj_player.x,obj_player.y) < 225 {
            sprite_index = spr_enemy_left;
        }
        if point_direction(x,y,obj_player.x,obj_player.y) > 315 || point_direction(x,y,obj_player.x,obj_player.y) < 45 {
            sprite_index = spr_enemy_right;
        }
        if point_direction(x,y,obj_player.x,obj_player.y) > 45 && point_direction(x,y,obj_player.x,obj_player.y) < 135 {
            sprite_index = spr_enemy_up;
        } 
        if point_direction(x,y,obj_player.x,obj_player.y) > 225 && point_direction(x,y,obj_player.x,obj_player.y) < 315 {
            sprite_index = spr_enemy_down;
        }
    
} else {
    if effect_active {
        layer_set_visible("Effect_2", false);
        effect_active = false;
    }
    
    switch(state) {
        case "chasing":
            if chase_timer < chase_duration {
                move_towards_point(last_known_x, last_known_y, vel_movimiento);
                chase_timer++;
            } else {
                state = "searching";
                search_timer = 0;
                speed = 0;
            }
            break;
            
        case "searching":
            if search_timer < search_duration {
                image_alpha = 0.7 + sin(search_timer * 0.2) * 0.3;
                search_timer++;
            } else {
                state = "patrolling";
                image_alpha = 1;
                current_patrol_point = 0;
                patrol_wait_time = 0;
            }
            break;
            
        case "patrolling":
            var target_point = patrol_points[current_patrol_point];
            var dist_to_point = point_distance(x, y, target_point.x, target_point.y);
            
            if dist_to_point > 2 {
                // Verificar si hay colisión en la dirección del movimiento
                var move_dir = point_direction(x, y, target_point.x, target_point.y);
                var next_x = x + lengthdir_x(vel_movimiento * 0.75, move_dir);
                var next_y = y + lengthdir_y(vel_movimiento * 0.75, move_dir);
                
                if(!place_meeting(next_x, next_y, obj_collision)) {
                    // Moverse hacia el punto actual de patrulla
                    move_towards_point(target_point.x, target_point.y, vel_movimiento * 0.75);
                } else {
                    // Si hay colisión, generar nuevos puntos de patrulla
                    create_patrol_points();
                    current_patrol_point = 0;
                }
                
                // Actualizar sprite basado en la dirección
                var dir = point_direction(x, y, target_point.x, target_point.y);
                if (dir > 135 && dir < 225) sprite_index = spr_enemy_left;
                if (dir > 315 || dir < 45) sprite_index = spr_enemy_right;
                if (dir > 45 && dir < 135) sprite_index = spr_enemy_up;
                if (dir > 225 && dir < 315) sprite_index = spr_enemy_down;
            } else {
                speed = 0;
                patrol_wait_time++;
                
                if patrol_wait_time >= target_point.wait_time {
                    // Elegir siguiente punto de forma aleatoria
                    var next_point;
                    do {
                        next_point = irandom(array_length(patrol_points) - 1);
                    } until (next_point != current_patrol_point);
                    
                    current_patrol_point = next_point;
                    patrol_wait_time = 0;
                }
            }
            break;
            
        case "idle":
            state = "patrolling";
            break;
    }
}

#endregion




