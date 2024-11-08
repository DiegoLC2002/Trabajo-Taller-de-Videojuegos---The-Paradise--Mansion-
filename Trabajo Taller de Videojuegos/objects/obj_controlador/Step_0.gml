/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// Control de cooldown y visibilidad
// Control de la visibilidad inicial y con TAB


if (initial_show) {
    show_objective = true;
    if (alpha >= 1) {
        current_duration++;
        if (current_duration >= show_duration) {
            show_objective = false;
            initial_show = false;
        }
    }
}

// Control del TAB
if (keyboard_check_pressed(vk_tab) && !initial_show && current_cooldown >= cooldown) {
    show_objective = true;
    current_duration = 0;
    current_cooldown = 0;
}

// Actualiza cooldown
if (current_cooldown < cooldown) {
    current_cooldown++;
}

// Si está visible por TAB, controla la duración
if (show_objective && !initial_show && alpha >= 1) {
    current_duration++;
    if (current_duration >= show_duration) {
        show_objective = false;
    }
}

if (show_objective) {
    alpha = min(alpha + fade_speed, 1);
} else {
    alpha = max(alpha - fade_speed, 0);
}

switch(room) {
    case Room1_Outside:
        objective_text = "Entrar en la Mansion del Abuelo";
        break;
        
    case Room2_Hall:
        objective_text = "Explora la Mansion...";
        break;
        
    case Room6_SecondFloor:
        objective_text = "2°do Piso";
        break;
        
    // Agrega más salas según necesites
    default:
        objective_text = "";
        break;
}