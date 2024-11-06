/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// En el evento de colisión entre caja y suelo
var id_caja = string(id);         // ID único de la caja
var id_suelo = string(other.id);  // ID único del suelo

// Registrar la caja y suelo como resueltos de forma independiente
if (!ds_map_exists(global.resueltos, id_caja)) {
    ds_map_add(global.resueltos, id_caja, true);
}
if (!ds_map_exists(global.resueltos, id_suelo)) {
    ds_map_add(global.resueltos, id_suelo, true);
}

// Eliminar las instancias de caja y suelo
instance_destroy(id);       // Elimina la caja
instance_destroy(other.id); // Elimina el suelo
