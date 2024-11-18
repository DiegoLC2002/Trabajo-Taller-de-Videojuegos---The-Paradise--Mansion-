function mostrar_barras_cinematicas() {
    if (!instance_exists(obj_cinematic_bars)) {
        var bars = instance_create_layer(0, 0, "Cinematics", obj_cinematic_bars);
        bars.estado = "abriendo";
        return true;
    }
    return false;
}