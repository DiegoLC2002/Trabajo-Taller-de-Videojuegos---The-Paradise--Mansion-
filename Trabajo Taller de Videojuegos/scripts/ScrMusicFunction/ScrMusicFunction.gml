// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function set_song_ingame(cancion, fadeOutCurrentcancion = 0, fadeIn = 0)
{
	
	with( oMusicManager)
	{
		targetcancionAsset = cancion;
		endFadeOutTime = fadeOutCurrentcancion;
		startFadeInTime = fadeIn;
		
		
	}

}