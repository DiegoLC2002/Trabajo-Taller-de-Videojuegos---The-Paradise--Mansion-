// arreglar el suelo que se mantenga persistente hasta que acabe el juego


if ((place_meeting(x-0,y+0, obj_soko_floor)) || (place_meeting(x-0,y+0, obj_soko_floor_2)) || (place_meeting(x-0,y+0, obj_soko_floor_3)))
{
	instance_destroy(self);
	instance_destroy(other);
	global.n_cajas++;
	if(instance_activate_object(  obj_box)){
		instance_destroy(self);
		instance_destroy(other);
	}

}
