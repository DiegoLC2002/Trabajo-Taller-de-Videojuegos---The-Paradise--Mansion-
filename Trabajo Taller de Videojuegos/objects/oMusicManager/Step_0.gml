/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var finalVol = global.musicVolume*global.masterVolume;

if cancionAsset != targetcancionAsset
{
	if audio_is_playing (cancionInstance)
	{
		array_push(fadeOutInstances, cancionInstance);
		array_push(fadeOutInsVol, fadeInInstVol);
		array_push(fadeOutInstTime, endFadeOutTime);
		
		cancionInstance = noone;
		cancionAsset = noone;
	}
	
	if array_length(fadeOutInstances) == 0
	{
		if audio_exists(targetcancionAsset)
		{
			cancionInstance = audio_play_sound(targetcancionAsset,4,true);
	
			audio_sound_gain(cancionInstance, 0,0);
			fadeInInstVol = 0;
		}
	
		cancionAsset = targetcancionAsset;
	}
}

	if audio_is_playing(cancionInstance)
	{
		if startFadeInTime > 0
		{
			if fadeInInstVol < 1 { fadeInInstVol += 1/startFadeInTime;} else fadeInInstVol = 1;
		}
		else
		{
			fadeInInstVol = 1;
		}
	
		audio_sound_gain(cancionInstance, fadeInInstVol*finalVol, 0);
	}

	for(var i=0; i< array_length(fadeOutInstances); i++)
	{
		if fadeOutInstTime[i] > 0
		{
			if fadeOutInsVol[i] > 0 { fadeOutInsVol[i] -= 1/fadeOutInstTime[i];};
		}
		
		else
		{
			fadeOutInsVol[i] = 0;
		}
		
		audio_sound_gain(fadeOutInstances[i], fadeOutInsVol[i]*finalVol, 0);
		
		if fadeOutInsVol[i] <= 0
		{
			
			if audio_is_playing(fadeOutInstances[i]) { audio_stop_sound(fadeOutInstances[i]); };
			
			array_delete(fadeOutInstances, i, 1);
			array_delete(fadeOutInsVol, i, 1);
			array_delete(fadeOutInstTime, i, 1);
			i--;
			
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	