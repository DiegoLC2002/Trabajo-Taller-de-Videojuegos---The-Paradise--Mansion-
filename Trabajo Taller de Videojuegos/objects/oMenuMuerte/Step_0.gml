/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
scale = lerp(scale, target_scale, 0.1);

// Reiniciar room cuando se presiona R
/// Evento Step del menú de muerte
if (can_restart && keyboard_check_pressed(ord("R"))) {
	
	
	// Cargar el estado desde el último checkpoint
    ini_open("save.ini");
    x = ini_read_real("Player", "x", x);
    y = ini_read_real("Player", "y", y);
    ini_close();
	// Crear efecto de fade-out
    instance_create_depth(0, 0, -9999, oFade);
    
    // Reiniciar la sala actual
    room_restart();
}


// Efecto de shake aleatorio
x = display_get_gui_width()/2 + random_range(-shake_amount, shake_amount);
y = display_get_gui_height()/2 + random_range(-shake_amount, shake_amount);

