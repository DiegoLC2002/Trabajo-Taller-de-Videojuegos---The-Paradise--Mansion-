/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (is_dead) {
    // El punto de respawn se manejará en el Step Event
} else {
    // Si es la primera vez que entra a la sala, usar la posición inicial
    var respawn_point = instance_nearest(0, 0, obj_respawn);
    if (respawn_point != noone) {
        x = respawn_point.x;
        y = respawn_point.y;
    }
}