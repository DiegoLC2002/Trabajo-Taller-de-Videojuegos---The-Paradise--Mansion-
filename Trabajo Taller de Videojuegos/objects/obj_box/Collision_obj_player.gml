/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(keyboard_check(vk_right))
{
	if (place_meeting(x-0,y+0,obj_player))
	{
		x+=3;
	
	}
	
}
if(keyboard_check(vk_left))
{
	if (place_meeting(x-0,y+0,obj_player))
	{
		x-=3;
	
	}
	
}
if(keyboard_check(vk_down))
{
	if (place_meeting(x-0,y+0,obj_player))
	{
		y+=3;
	
	}
	
}
if(keyboard_check(vk_up))
{
	if (place_meeting(x-0,y+0,obj_player))
	{
		y-=3;
	
	}
	
}