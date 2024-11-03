/// @description Inserte aquí la descripción


if (view_enabled) {
    x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
    y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;
} else {
    x = room_width/2;
    y = room_height/2;
}
// Efecto de shake
var shake_intensity = (60 - alarm[0]) / 10;
x += random_range(-shake_intensity, shake_intensity);
y += random_range(-shake_intensity, shake_intensity);

// Manejar la transición
switch(state) {
    case "jumpscare":
        // El jumpscare está activo
        image_alpha = 1;
        break;
        
    case "transition":
        // Fase de transición al menú de muerte
        alpha_transition += 0.025;
        if (alpha_transition >= 1) {
            instance_create_layer(0, 0, "Instances", oMenuMuerte);
            instance_destroy();
        }
        break;
}