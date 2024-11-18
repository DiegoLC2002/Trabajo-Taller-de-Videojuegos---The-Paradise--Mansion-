
var mpersecusion;






// En Create Event:
effect_active = false;
// En Create Event:
// Variables base
last_known_x = x;
last_known_y = y;
chase_timer = 0;
chase_duration = 60;
state = "idle";
search_timer = 0;
search_duration = 60;
vel_movimiento = 1.5;
effect_active = false;

// Variables de patrullaje mejoradas
patrol_points = [];
current_patrol_point = 0;
patrol_wait_time = 0;
patrol_wait_duration = 20;
patrol_range = 128; // Aumentado para más amplitud
patrol_min_distance = 64; // Distancia mínima entre puntos
initial_x = x; // Guardar posición inicial
initial_y = y;

avoid_timer = 0;
avoid_duration = 30; // Frames to try alternative navigation
avoid_direction = 0;
stuck_threshold = 5;

navigation_cooldown = 0;
navigation_state = "normal";


create_patrol_points();
 

/*

alarm[0] = room_speed * 1;



if(room == Room2_Hall){
	path = [
		[0, 1], //movimiento hacia abajo
		[-1, 0], //movimiento hacia izquierda
		[1, 0], //movimiento hacia derecha
		[0, -1], //movimiento hacia arriba

	];
	pathIndex = 0;
	
	
}else if(room == Room3_Library ){
	path = [
		[0, 1],[0, 1],[0, 1],[0, 1],[0, 1], //movimiento hacia abajo
		[1, 0],[1, 0], //movimiento hacia derecha
		[0, -1],[0, -1],[0, -1],[0, -1],[0, -1], //movimiento hacia arriba
		[1, 0],[1, 0],
		[0, 1],[0, 1],[0, 1],[0, 1],[0, 1],[0, 1],
		[1, 0],[1, 0],
		[0, -1],[0, -1],[0, -1],[0, -1],[0, -1],[0, -1],[0, -1],
		[1, 0],[1, 0],[1, 0],
		[0, 1],[0, 1],[0, 1],[0, 1],[0, 1],[0, 1],[0, 1],
		[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0], //movimiento hacia izquierda
		[0, -1],[0, -1],[0, -1],[0, -1],[0, -1],[0, -1],

	];
	pathIndex = 0;

}else if(room == Room4_Bathom){
	path = [
		[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0], //movimiento hacia izquierda
		[0, 1],[0, 1],[0, 1],[0, 1],[0, 1], //movimiento hacia abajo
		[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],
		[0, -1],[0, -1],[0, -1],[0, -1],[0, -1], //movimiento hacia arriba
		[1,0],
		[0,-1],[0,-1],
		[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0], //movimiento hacia derecha
		[0,1],[0,1],
		[1,0],[1,0],
		[0, 1],[0, 1],[0, 1],[0, 1],[0, 1],[0, 1],[0, 1],
		[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],
		[0, -1],[0, -1], //movimiento hacia arriba
		[1, 0],[1, 0],
		[0, -1],[0, -1],[0, -1],[0, -1],[0, -1],
		

	];
	pathIndex = 0;

}else if(room == Room5_Kitchen && !mpersecusion )
{
	path = [
		[1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0],  //movimiento hacia derecha
		[0,1],[0,1],[0,1],[0,1],[0,1],[0,1],[0,1], //Movimiento hacia abajo
		[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0], //Movimiento hacia izquierda
		[1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0],  //movimiento hacia derecha
		[0, -1],[0, -1],[0, -1], //movimiento hacia arriba
		[1, 0], [1, 0], //Derecha
		[0, -1],[0, -1], //Arriba
		[-1, 0],[-1, 0], //izquierda
		[0, -1],[0, -1],//Arriba
		[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0], //Izquierda

	];
	pathIndex = 0;
	
}else if(room == Room6_SecondFloor){
		path = [
		[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0], //movimiento hacia izquierda
		[0, -1], //movimiento hacia arriba
		[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],  //movimiento hacia derecha
		[0, 1], //movimiento hacia abajo
		[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],

	];
	pathIndex = 0;

}else if(room == Room9_SecondFloor_Bedrom){
	path = [
		[0, 1],[0, 1],[0, 1],[0, 1],[0, 1],[0, 1], //movimiento hacia abajo
		[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0],[1, 0], //movimiento hacia derecha
		[0, -1],[0, -1],[0, -1],[0, -1],[0, -1],[0, -1], //movimiento hacia arriba
		[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0],[-1, 0], //movimiento hacia izquierda

	];
	pathIndex = 0;
}
*/