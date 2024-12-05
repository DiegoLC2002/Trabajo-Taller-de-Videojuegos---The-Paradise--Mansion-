/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
vel_movimiento = 1.6;
vel_correr = .7;

var n_cajas 
var id_caja = string(id);
var clave = id_caja;

// Si la caja ya fue resuelta, destrúyela inmediatamente
if (ds_map_exists(global.resueltos, clave)) {
    instance_destroy();
}
