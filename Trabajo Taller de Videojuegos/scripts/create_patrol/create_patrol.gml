// Función mejorada para crear puntos de patrulla
function create_patrol_points() {
    patrol_points = [];
    var num_points = 6; // Aumentado a 6 puntos
    var attempts;
    
    for(var i = 0; i < num_points; i++) {
        attempts = 0;
        var valid_point_found = false;
        
        while(!valid_point_found && attempts < 20) {
            // Generar punto aleatorio dentro de un área
            var angle = random(360);
            var dist = random_range(patrol_min_distance, patrol_range);
            var test_x = initial_x + lengthdir_x(dist, angle);
            var test_y = initial_y + lengthdir_y(dist, angle);
            
            // Verificar si el punto es válido
            if(is_valid_point(test_x, test_y)) {
                // Verificar distancia con otros puntos
                var too_close = false;
                for(var j = 0; j < array_length(patrol_points); j++) {
                    if(point_distance(test_x, test_y, patrol_points[j].x, patrol_points[j].y) < patrol_min_distance) {
                        too_close = true;
                        break;
                    }
                }
                
                if(!too_close) {
                    // Verificar que haya un camino libre hasta el punto
                    var path_clear = true;
                    for(var k = 0; k < 10; k++) {
                        var check_x = initial_x + lengthdir_x(dist * k/10, angle);
                        var check_y = initial_y + lengthdir_y(dist * k/10, angle);
                        if(!is_valid_point(check_x, check_y)) {
                            path_clear = false;
                            break;
                        }
                    }
                    
                    if(path_clear) {
                        patrol_points[array_length(patrol_points)] = {
                            x: test_x,
                            y: test_y,
                            wait_time: irandom_range(patrol_wait_duration/2, patrol_wait_duration*1.5)
                        };
                        valid_point_found = true;
                    }
                }
            }
            attempts++;
        }
    }
    
    // Si no se encontraron suficientes puntos, crear algunos cercanos
    if(array_length(patrol_points) < 3) {
        for(var i = array_length(patrol_points); i < 3; i++) {
            patrol_points[i] = {
                x: initial_x + irandom_range(-32, 32),
                y: initial_y + irandom_range(-32, 32),
                wait_time: patrol_wait_duration
            };
        }
    }
}