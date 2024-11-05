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
    if(btn_correr) {
        x += vel_movimiento * vel_correr;
    }
}
else if(btn_izquierda) {
    if(place_free(x - vel_movimiento, y)) {
        x -= vel_movimiento;
        se_movio = true;
        ultima_direccion = "izquierda";
    }
    if(btn_correr) {
        x -= vel_movimiento * vel_correr;
    }
}
else if(btn_arriba) {
    if(place_free(x, y - vel_movimiento)) {
        y -= vel_movimiento;
        se_movio = true;
        ultima_direccion = "arriba";
    }
    if(btn_correr) {
        y -= vel_movimiento * vel_correr;
    }
}
else if(btn_abajo) {
    if(place_free(x, y + vel_movimiento)) {
        y += vel_movimiento;
        se_movio = true;
        ultima_direccion = "abajo";
    }
    if(btn_correr) {
        y += vel_movimiento * vel_correr;
    }
}

// Cambia el sprite al final del Step, basado en movimiento o idle
if(se_movio) {
    switch(ultima_direccion) {
        case "derecha":
            sprite_index = spr_player_right;  // Sprite de movimiento a la derecha
            break;
        case "izquierda":
            sprite_index = spr_player_left;   // Sprite de movimiento a la izquierda
            break;
        case "arriba":
            sprite_index = spr_player_up;     // Sprite de movimiento hacia arriba
            break;
        case "abajo":
            sprite_index = spr_player_down;   // Sprite de movimiento hacia abajo
            break;
    }
} else {
    // Cuando no se mueve, cambia al sprite idle según la última dirección
    switch(ultima_direccion) {
        case "derecha":
            sprite_index = spr_player_right_idle;
            break;
        case "izquierda":
            sprite_index = spr_player_left_idle;
            break;
        case "arriba":
            sprite_index = spr_player_up_idle;
            break;
        case "abajo":
            sprite_index = spr_player_down_idle;
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
