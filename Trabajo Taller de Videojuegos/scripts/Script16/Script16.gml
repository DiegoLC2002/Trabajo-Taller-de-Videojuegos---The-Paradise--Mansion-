// Función para ocultar las barras
function ocultar_barras_cinematicas() {
    if (instance_exists(obj_cinematic_bars)) {
        obj_cinematic_bars.estado = "cerrando";
        return true;
    }
    return false;
}