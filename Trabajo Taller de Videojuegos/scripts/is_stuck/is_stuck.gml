function is_stuck() {
    var current_dist = point_distance(x, y, last_position_x, last_position_y);
    last_position_x = x;
    last_position_y = y;
    return current_dist < 1;
}