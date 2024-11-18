/// obj_cinematic_bars Step Event
switch(estado) {
    case "abriendo":
        if(current_height < target_height) {
            current_height += animation_speed * target_height;
        } else {
            current_height = target_height;
            estado = "abierto";
        }
        break;
        
    case "cerrando":
        if(current_height > 0) {
            current_height -= animation_speed * target_height;
        } else {
            current_height = 0;
            estado = "cerrado";
        }
        break;
}/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
