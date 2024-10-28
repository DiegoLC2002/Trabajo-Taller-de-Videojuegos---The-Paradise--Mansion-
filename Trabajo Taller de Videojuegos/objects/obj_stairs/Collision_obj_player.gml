/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


instance_create_depth(0, 0, -9999, oFade);
audio_play_sound(Stairs,2,false);
room_goto(targetRoom);
obj_player.x = targetX;
obj_player.y = targetY;

