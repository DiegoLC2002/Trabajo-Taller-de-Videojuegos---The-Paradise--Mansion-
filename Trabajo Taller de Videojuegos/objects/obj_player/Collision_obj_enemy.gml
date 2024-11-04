if (!instance_exists(oJumpScare) && !instance_exists(oMenuMuerte)) {
    // Crear el jumpscare
	if (!is_dead){
	is_dead = true;
	instance_create_layer(x, y, "Instances", oJumpScare);
	}
    speed = 0;
    // No ocultar al jugador inmediatamente para evitar el vacío
    alarm[0] = 60; // Usar alarm para ocultar al jugador después
}

 
 /*reiniciar_room = keyboard_check(ord("R"));
 
 
 if(room == Room3_Library)
 {
	obj_Camera.sprite_index = spr_jumpscare_library;
	audio_play_sound(JumpScare1,1,false);
	//audio_play_sound(sonidos, 1, false); //(nombre_sonido,prioridad_sonido,bucle)
	
	if(reiniciar_room)
	{
		obj_Camera.sprite_index = noone;
		room_restart();
	}
 }else if(room == Room4_Bathom)
 {
 	obj_Camera.sprite_index = spr_jumpscare_bathroom;
	audio_play_sound(JumpScare1,1,false);
	//audio_play_sound(sonidos, 1, false); //(nombre_sonido,prioridad_sonido,bucle)
	
	if(reiniciar_room)
	{
		obj_Camera.sprite_index = noone;
		room_restart();
	}
 
 }else if(room == Room5_Kitchen)
 {
	obj_Camera.sprite_index = spr_jumpscare_kitchen;
	audio_play_sound(JumpScare1,1,false);
	//audio_play_sound(sonidos, 1, false); //(nombre_sonido,prioridad_sonido,bucle)
	
	if(reiniciar_room)
	{
		obj_Camera.sprite_index = noone;
		room_restart();
	}
 }else if(room == Room6_SecondFloor)
 {
 	obj_Camera.sprite_index = spr_jumpscare_SecondFloor;
	audio_play_sound(JumpScare1,1,false);
	//audio_play_sound(sonidos, 1, false); //(nombre_sonido,prioridad_sonido,bucle)
	
	if(reiniciar_room)
	{
		obj_Camera.sprite_index = noone;
		room_restart();
	}
 
 }else if(room == Room9_SecondFloor_Bedrom)
 {
 	obj_Camera.sprite_index = spr_jumpscare_bedroom;
	audio_play_sound(JumpScare1,1,false);
	//audio_play_sound(sonidos, 1, false); //(nombre_sonido,prioridad_sonido,bucle)
	
	if(reiniciar_room)
	{
		obj_Camera.sprite_index = noone;
		room_restart();
	}
 
 }
 */