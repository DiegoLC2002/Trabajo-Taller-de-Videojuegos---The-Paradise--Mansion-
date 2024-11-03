/// obj_jumpscare_controller - Create Event
depth = -10000;        // Asegura que se dibuje por encima de todo
image_speed = 1;       // Velocidad de la animación del jumpscare
image_xscale = 1.25;      // Escala el sprite si es necesario
image_yscale = 1.25;
alarm[0] = 60;         // Delay para crear el menú de muerte
audio_play_sound(JumpScare1, 1, false);  // Sonido del jumpscare
audio_play_sound(Piano, 1, false);

alpha_transition = 0;
state = "jumpscare";
