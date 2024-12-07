/// @description Movimiento de caja con detección de colisiones
// Puede escribir su código en este editor
if(!keyboard_check(vk_space))
{
	if(keyboard_check(vk_right))
	{
	    if (place_meeting(x-0,y+0,obj_player))
	    {
	        // Verifica si hay colisión con la pared en la siguiente posición
	        if (!place_meeting(x+ vel_movimiento * vel_correr,y,obj_collision))
	        {
	            x+=3;
	        }
	        else
	        {
	            // Si hay colisión, detener al jugador también
	            with(obj_player)
	            {
	                if (keyboard_check(vk_right)) x = xprevious;
	            }
	        }
	    }
	}

	if(keyboard_check(vk_left))
	{
	    if (place_meeting(x-0,y+0,obj_player))
	    {
	        if (!place_meeting(x-vel_movimiento * vel_correr,y,obj_collision))
	        {
	            x-=3;
	        }
	        else
	        {
	            with(obj_player)
	            {
	                if (keyboard_check(vk_left)) x = xprevious;
	            }
	        }
	    }
	}

	if(keyboard_check(vk_down))
	{
	    if (place_meeting(x-0,y+0,obj_player))
	    {
	        if (!place_meeting(x,y+vel_movimiento * vel_correr,obj_collision))
	        {
	            y+=3;
	        }
	        else
	        {
	            with(obj_player)
	            {
	                if (keyboard_check(vk_down)) y = xprevious;
	            }
	        }
	    }
	}

	if(keyboard_check(vk_up))
	{
	    if(place_meeting(x-0,y+0,obj_player))
	    {
	        if (!place_meeting(x,y-vel_movimiento * vel_correr,obj_collision))
	        {
	            y-=3;
	        }
	        else
	        {
	            with(obj_player)
	            {
	                if (keyboard_check(vk_up)) y = xprevious;
	            }
	        }
	    }
	}
}