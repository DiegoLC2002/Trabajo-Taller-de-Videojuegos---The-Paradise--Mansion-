function init_pathfinding() {
    // Añadir las paredes al grid
    mp_grid_add_instances(grid, obj_collision, true);
    
    // Inicializar el path
    path_set_kind(path, 1); // Smooth path
    path_set_precision(path, 8);
}