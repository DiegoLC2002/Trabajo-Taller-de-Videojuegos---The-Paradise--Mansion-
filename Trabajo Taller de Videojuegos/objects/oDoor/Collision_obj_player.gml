/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (keyboard_check_pressed(ord("E"))){
instance_create_depth(0, 0, -9999, oFade);

room_goto(targetRoom);
obj_player.x = targetX;
obj_player.y = targetY;
}
