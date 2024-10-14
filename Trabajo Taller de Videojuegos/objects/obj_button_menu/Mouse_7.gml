/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if !press exit;

if texto == "play"

{
	room_goto(Room1_Outside);
}
if texto == "Reiniciar"

{
	room_goto(room_first);
}
if texto == "Continuar"

{
	room_goto_previous();
}
if texto == "Salir"

{
	game_end();
}
