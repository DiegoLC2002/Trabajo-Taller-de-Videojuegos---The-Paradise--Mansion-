
vel_movimiento = 1;


alarm[0] = room_speed * 1;

if(room == Room2_Hall){
	path = [
		[0, 1], //movimiento hacia abajo
		[-1, 0], //movimiento hacia izquierda
		[-1, 0],
		[-1, 0],
		[-1, 0],
		[-1, 0],
		[-1, 0],
		[-1, 0],
		[-1, 0],
		[-1, 0],
		[1, 0], //movimiento hacia derecha
		[1, 0],
		[1, 0],
		[1, 0],
		[1, 0],
		[1, 0],
		[1, 0],
		[1, 0],
		[1, 0],
		//[0, -1], //movimiento hacia arriba


	];
	pathIndex = 0;
	
}else if(room == Room5_Kitchen)
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
	
}