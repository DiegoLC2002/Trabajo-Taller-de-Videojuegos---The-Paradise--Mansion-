// Step Event:

if (keyboard_check_pressed(vk_escape)) {
   
   pausa = !pausa;
    if (pausa) {
		
        instance_deactivate_all(true); // Desactiva todos los objetos excepto este
        instance_activate_object(oPausa); // Nos aseguramos que el menú sigue activo
		
    } else {
        instance_activate_all(); // Reactiva todo
		
        nivel_menu = 0;
        pos = 0;
    }
}

if (pausa) {
    tecla_arriba = keyboard_check_pressed(vk_up);
    tecla_abajo = keyboard_check_pressed(vk_down);
    tecla_aceptar = keyboard_check_pressed(vk_enter);
    op_largo = array_length(opcion[nivel_menu]);
    
    pos += tecla_abajo - tecla_arriba;
    
    if (pos >= op_largo) {pos = 0;}
    if (pos < 0) {pos = op_largo - 1;}
    
    if (tecla_aceptar) {
        var emp = nivel_menu;
        
        switch(nivel_menu) {
            case 0: // Menú principal de pausa
                switch(pos) {
                    case 0: // Continuar
                        pausa = false;
                        instance_activate_all();
                        break;
                    case 1: // Guardar
                        // Aquí tu código de guardado
                        break;
                    case 2: // Cargar
                        // Aquí tu código de carga
                        break;
                    case 3: // Ajustes
                        nivel_menu = 1;
                        break;
                    case 4: // Salir al menú
                        instance_activate_all();
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
                    case 3: // Volver
                        nivel_menu = 0;
                        break;
                }
                break;
        }
        
        if (emp != nivel_menu) {pos = 0;}
        op_largo = array_length(opcion[nivel_menu]);
    }
}