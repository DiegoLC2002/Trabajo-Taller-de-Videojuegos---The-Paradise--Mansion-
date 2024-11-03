/// obj_jumpscare_controller - Create Event
depth = -10000;        // Asegura que se dibuje por encima de todo
image_speed = 1;       // Velocidad de la animación del jumpscare
image_xscale = 2;      // Escala el sprite si es necesario
image_yscale = 2;
alarm[0] = 180;         // Delay para crear el menú de muerte
audio_play_sound(JumpScare1, 1, false);  // Sonido del jumpscare

alpha_transition = 0;
state = "jumpscare";
