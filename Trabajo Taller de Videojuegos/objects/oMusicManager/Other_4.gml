/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



if room == Room1_Outside
{
	set_song_ingame( Outside, 60, 60);	
}

if room == Room2_Hall 
|| room == Room6_SecondFloor 
|| room == Room7_SecondFloor_left 
|| room == Room8_SecondFloor_right 
{
	set_song_ingame(Enemy_music, 60, 60 );
}
