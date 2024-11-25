	if (!array_contains(global.keys_collected, room)) {
    array_push(global.keys_collected, room);
    instance_destroy();  // Destruye el objeto de la llave
	
	global.contador_llaves ++;
	
	
	}

