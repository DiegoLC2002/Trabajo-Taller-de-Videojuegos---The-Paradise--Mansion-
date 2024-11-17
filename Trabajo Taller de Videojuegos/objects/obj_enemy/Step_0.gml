if distance_to_object(obj_player) < 128
{
    if !effect_active
    {
        layer_set_visible("Effect_1", true);
        effect_active = true;
    }

	
        
		
    if point_direction(x,y,obj_player.x,obj_player.y) > 0 && point_direction(x,y,obj_player.x,obj_player.y) < 360
    {
        move_towards_point(obj_player.x,obj_player.y,vel_movimiento+ .25);
        
        if (obj_player.y < y ){ obj_player.depth = depth + 1}
        if (obj_player.y > y ){ obj_player.depth = depth - 1}
                            
        if point_direction(x,y,obj_player.x,obj_player.y) > 135 && point_direction(x,y,obj_player.x,obj_player.y) < 225
        {
            sprite_index = spr_enemy_left;
        }
        if point_direction(x,y,obj_player.x,obj_player.y) > 315 || point_direction(x,y,obj_player.x,obj_player.y) < 45
        {
            sprite_index = spr_enemy_right;
        }
        if point_direction(x,y,obj_player.x,obj_player.y) > 45 && point_direction(x,y,obj_player.x,obj_player.y) < 135
        {
            sprite_index = spr_enemy_up;
        } 
        if point_direction(x,y,obj_player.x,obj_player.y) > 225 && point_direction(x,y,obj_player.x,obj_player.y) < 315
        {
            sprite_index = spr_enemy_down;
        }
    }
}
else
	{
	    if effect_active
	    {
	        layer_set_visible("Effect_1", false);
	        effect_active = false;
	    }
	}
