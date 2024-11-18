function create_avoidance_path() {
    // Try different direction variations to find a clear path
    var directions = [45, -45, 90, -90, 135, -135];
    
    for (var i = 0; i < array_length(directions); i++) {
        var current_angle = point_direction(x, y, obj_player.x, obj_player.y) + directions[i];
        var test_x = x + lengthdir_x(vel_movimiento * 2, current_angle);
        var test_y = y + lengthdir_y(vel_movimiento * 2, current_angle);
        
        // Check if this path is clear
        if (!place_meeting(test_x, test_y, obj_collision)) {
            avoid_direction = current_angle;
            avoid_timer = avoid_duration;
            return true;
        }
    }
    
    return false;
}