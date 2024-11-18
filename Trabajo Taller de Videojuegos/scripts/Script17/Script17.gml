function barras_cinematicas_abiertas() {
    if (instance_exists(obj_cinematic_bars)) {
        return obj_cinematic_bars.estado == "abierto";
    }
    return false;
}