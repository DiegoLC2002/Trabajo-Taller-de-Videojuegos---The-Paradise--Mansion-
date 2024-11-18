function barras_cinematicas_cerradas() {
    if (instance_exists(obj_cinematic_bars)) {
        return obj_cinematic_bars.estado == "cerrado";
    }
    return true; // Si no existen, consideramos que están cerradas
}