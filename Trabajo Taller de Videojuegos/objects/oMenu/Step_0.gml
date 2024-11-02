/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
tecla_arriba = keyboard_check_pressed(vk_up)
tecla_abajo = keyboard_check_pressed(vk_down)
tecla_aceptar = keyboard_check_pressed(vk_enter)

op_largo = array_length(opcion[nivel_menu]);

pos += tecla_abajo - tecla_arriba

if pos >= op_largo {pos = 0}
if pos < 0 {pos = op_largo -1}

if tecla_aceptar{
	
	var emp = nivel_menu;
	
switch(nivel_menu){
		
	case 0:
		switch(pos){
		
		case 0: instance_create_depth(0, 0, -9999, oFade); room_goto(Room1_Outside); break;
	
		case 1: nivel_menu = 1; break;
		
		case 2: game_end(); break;
	
	}
	
	case 1:
	
		switch(pos){
			
		case 0: break;
		case 1: break;
		case 2: break;
		case 3: nivel_menu = 0 break;
			
		}
	break;
	
	}
	
if emp != nivel_menu {pos = 0}
op_largo = array_length(opcion[nivel_menu]);
	
}