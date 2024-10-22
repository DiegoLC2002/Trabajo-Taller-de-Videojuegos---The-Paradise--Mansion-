 reiniciar_room = keyboard_check(vk_space);//cambiar por otra cosa
 
 if(room == Room5_Kitchen)
 {
	obj_Camera.sprite_index = spr_jumpscare_kitchen;
	
	if(reiniciar_room)
	{
		obj_Camera.sprite_index = noone;
		room_restart();
	}
 }