// Step Event:

if (keyboard_check_pressed(vk_escape)) {
   
   pausa = !pausa;
    if (pausa) {
		
        instance_deactivate_all(true); // Desactiva todos los objetos excepto este
        instance_activate_object(oPausa); // Nos aseguramos que el menú sigue activo
		pos = 1;
    } else {
        instance_activate_all(); // Reactiva todo
		
        nivel_menu = 0;
        pos = 1;
    }
}

if (pausa) {
    tecla_arriba = keyboard_check_pressed(vk_up);
    tecla_abajo = keyboard_check_pressed(vk_down);
    tecla_aceptar = keyboard_check_pressed(vk_enter);
    op_largo = array_length(opcion[nivel_menu]);
    
    pos += tecla_abajo - tecla_arriba;
    
    if (pos >= op_largo) {pos = 1;}
    if (pos < 1) {pos = op_largo - 1;}
	
	
	if nivel_menu == 1 { pos = 7 };
	
	
	
    if (tecla_aceptar) {
        var emp = nivel_menu;
		
        
        switch(nivel_menu) {
            case 0: // Menú principal de pausa
                switch(pos) {
                    case 0: break;
					
					case 1: // Continuar
                        pausa = false;
                        instance_activate_all();
                        break;
						
                    case 2: pausa = !pausa;
							instance_activate_all(); // Reactiva todo
							nivel_menu = 0;
							pos = 0;
							instance_create_depth(0, 0, -9999, oFade);
							if (instance_nearest(0,0,obj_door))
							room_restart();
						break;					
                    case 3: nivel_menu = 1;
                        break;
                    case 4:  instance_activate_all();
						instance_destroy(obj_player)
                        room_goto(Room0_Menu); pausa = false; // Cambia room_menu por tu sala de menú
                        break;
                }
                break;
                
            case 1: // Menú de ajustes
                switch(pos) {
                    case 0: // Volumen
                        break;
                    case 1: // Brillo
                        break;
                    case 2: // Controles
                        break;
					case 3: // Controles
                        break;
					case 4: // Controles
                        break;
					case 5: // Controles
                        break;
					case 6: // Controles
                        break;
                    case 7: // Volver
                        nivel_menu = 0;
                        break;
                }
                break;
        }
        
        if (emp != nivel_menu) {pos = 1;}
        op_largo = array_length(opcion[nivel_menu]);
    }
}