
vel_movimiento = 1;


alarm[0] = room_speed * 1;

#region movimiento segun la rooom

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


	];
	pathIndex = 0;
	
}else if(room == Room3_Library)
{
	path = [
		[0,1],[0,1],[0,1],[0,1],[0,1],
		[1,0],[1,0],
		[0, -1],[0, -1],[0, -1],
		[1,0][1,0],
		
		[1,0][1,0],
		
		[1,0][1,0],

	];
	pathIndex = 0;

}else if(room == Room4_Bathom)
{



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
	
}else if(room == Room6_SecondFloor)
{

}else if(room == Room7_SecondFloor_right)
{

}else if(room == Room8_SecondFloor_left)
{

}else if(room == Room9_SecondFloor_Bedrom)
{

}else if(room == Room10_SecondFloor_Storage)
{

}

#endregion