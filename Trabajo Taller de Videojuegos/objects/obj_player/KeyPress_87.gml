/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if place_free(x,y-64){
	y -= 64;

}
else{
	if position_meeting(x,y-64,caja){
		if place_free(x,y-128){
			with(instance_position(x,y-64,caja)){
				y-=64;	
			}
		y-=64;
		
		}
	}
}