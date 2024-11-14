texto_sala = "Psst, por aqui"

if (room == Room2_Hall)
	{
	 texto_sala = "Caspi: OYEE!!... me pareces familiar... \nsolo que no recuerdo en donde...  "
	}
	if (room == Room5_Kitchen) {texto_sala = "Caspi: Siempre me ha dado escalofrio \nla cocina... Te recomiendo ir con cuidado..."}
	if (room == Room6_SecondFloor) 
	{ 
		if (global.contador_llaves >= 0 && global.contador_llaves < 4){texto_sala = "Para acceder a la oficina, necesitas\nlas llaves que estan en las habitaciones" ;}	
		if (global.contador_llaves >= 4 && global.contador_llaves < 6){texto_sala = "Ya llevas algunas llaves, ahora solo ten cuidado de no\n MORIR!!" ;}	
		if (global.contador_llaves == 6){texto_sala = "Solo te falta 1, Rapido!!!" ;}	
		if (global.contador_llaves >= 7){texto_sala = "Ya puedes entrar!! " ;}	
	}