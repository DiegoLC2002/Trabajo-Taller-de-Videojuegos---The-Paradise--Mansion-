// Cambiar sprite al presionar Enter
if (keyboard_check_pressed(vk_enter)) {
    if (current_letter == 1) {
        sprite_index = spr_letter_2;
        current_letter = 2;
    } else if (current_letter == 2) {
        sprite_index = spr_letter_3;
        current_letter = 3;
    } else {
        // Eliminar la carta
        sprite_index = noone;
    }
}