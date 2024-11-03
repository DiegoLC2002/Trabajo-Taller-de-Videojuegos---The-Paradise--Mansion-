/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (keyboard_check_pressed(vk_enter)) {
    if (current_letter == 1) {
        sprite_index = Spr_letter_2_2;
        current_letter = 2;
    } else if (current_letter == 2) {
        sprite_index = Spr_letter_3_3;
        current_letter = 3;
    } else {
        // Eliminar la carta
        sprite_index = noone;
		instance_create_depth(0, 0, -9999, oFade);
		room_goto_next();
    }
}