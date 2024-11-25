global.player_last_position_x = x;
global.player_last_position_y = y;

#region Movimiento Player
// Evento Step
var btn_derecha = keyboard_check(vk_right);
var btn_izquierda = keyboard_check(vk_left);
var btn_arriba = keyboard_check(vk_up);
var btn_abajo = keyboard_check(vk_down);
var btn_correr = keyboard_check(vk_space);

// Verifica si el personaje se movió
var se_movio = false;

if(btn_derecha) {
    if(place_free(x + vel_movimiento, y)) {
        x += vel_movimiento;
        se_movio = true;
        ultima_direccion = "derecha";
    }
	    if(btn_correr && puede_sprint && sprint_energia_actual > energia_minima_requerida) {
	        x += vel_movimiento * vel_correr;
	    }
}
else if(btn_izquierda) {
    if(place_free(x - vel_movimiento, y)) {
        x -= vel_movimiento;
        se_movio = true;
        ultima_direccion = "izquierda";
    }
    if(btn_correr && puede_sprint && sprint_energia_actual > energia_minima_requerida) {
        x -= vel_movimiento * vel_correr;
    }
}
else if(btn_arriba) {
    if(place_free(x, y - vel_movimiento)) {
        y -= vel_movimiento;
        se_movio = true;
        ultima_direccion = "arriba";
    }
    if(btn_correr && puede_sprint && sprint_energia_actual > energia_minima_requerida) {
        y -= vel_movimiento * vel_correr;
    }
}
else if(btn_abajo) {
    if(place_free(x, y + vel_movimiento)) {
        y += vel_movimiento;
        se_movio = true;
        ultima_direccion = "abajo";
    }
    if(btn_correr && puede_sprint && sprint_energia_actual > energia_minima_requerida) {
        y += vel_movimiento * vel_correr;
    }
}
#region Sistema Sprint
if (btn_correr && puede_sprint && sprint_energia_actual > energia_minima_requerida && !sprint_agotado && se_movio) {
    // Consumir energía mientras corre
    sprint_energia_actual -= sprint_consumo;
    
    // Si la energía llega a 0
    if (sprint_energia_actual <= 0) {
        sprint_energia_actual = 0;
        puede_sprint = false;
        sprint_agotado = true;  // Marca que se agotó completamente
    }
} else {
    // Recargar energía cuando no está corriendo
    if (sprint_energia_actual < sprint_energia_maxima) {
        sprint_energia_actual += sprint_recarga;
        
        // Solo permite sprint de nuevo cuando la energía está completamente llena
        if (sprint_energia_actual >= sprint_energia_maxima) {
            puede_sprint = true;
            sprint_agotado = false;  // Reset la bandera de agotado
        }
    }
    
    // Limitar la energía al máximo
    if (sprint_energia_actual > sprint_energia_maxima) {
        sprint_energia_actual = sprint_energia_maxima;
    }
}
#endregion



// Cambia el sprite al final del Step, basado en movimiento o idle
if(se_movio) {
    switch(ultima_direccion) {
        case "derecha":
            sprite_index = spr_player_walk_right;  // Sprite de movimiento a la derecha
            if (btn_correr){sprite_index = spr_player_run_right; }
			break;
        case "izquierda":
            sprite_index = spr_player_walk_left;   // Sprite de movimiento a la izquierda
            break;
        case "arriba":
            sprite_index = spr_player_walk_up;     // Sprite de movimiento hacia arriba
			if (btn_correr){sprite_index = spr_player_run_up; }
            break;
        case "abajo":
            sprite_index = spr_player_walk_down;   // Sprite de movimiento hacia abajo
            break;
    }
} else {
    // Cuando no se mueve, cambia al sprite idle según la última dirección
    switch(ultima_direccion) {
        case "derecha":
            sprite_index = spr_player_idle_right;
            break;
        case "izquierda":
            sprite_index = spr_player_idle_left;
            break;
        case "arriba":
            sprite_index = spr_player_idle_up;
            break;
        case "abajo":
            sprite_index = spr_player_idle_down;
            break;
    }
}


#endregion

if (is_dead && usar_checkpoint && checkpoint_valido) {
    // Teletransporta al checkpoint
    x = checkpoint_x;
    y = checkpoint_y;
    
    // Desactiva el checkpoint después de usarlo
    checkpoint_valido = false;
    is_dead = false;          
    usar_checkpoint = false; 
}
