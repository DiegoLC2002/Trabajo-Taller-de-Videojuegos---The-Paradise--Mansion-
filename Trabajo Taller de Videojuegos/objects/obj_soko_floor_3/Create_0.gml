/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var id_suelo = string(id);
var clave = id_suelo;

// Si el suelo ya fue resuelto, destrúyelo inmediatamente
if (ds_map_exists(global.resueltos, clave)) {
    instance_destroy();
}
