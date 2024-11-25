/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (array_contains(global.keys_collected, room)) {
    instance_destroy();  // Evita recrear llaves ya recogidas
}