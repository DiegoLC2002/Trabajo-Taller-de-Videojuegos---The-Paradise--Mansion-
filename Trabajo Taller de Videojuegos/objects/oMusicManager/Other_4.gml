/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if room == Room1_Outside
{
	set_song_ingame( Outside, 60, 60);	
}

if room == Room2_Hall || Room6_SecondFloor || Room7_SecondFloor_left || Room8_SecondFloor_right 
{
	set_song_ingame(Ambience, 60, 60 );
}