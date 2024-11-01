




if distance_to_object(obj_player) < 128
{
	
		if point_direction(x,y,obj_player.x,obj_player.y) > 0 && point_direction(x,y,obj_player.x,obj_player.y) < 360
		{
			
			move_towards_point(obj_player.x,obj_player.y,vel_movimiento+ .25);
			
				
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
			
		}/*
	
		if point_direction(x,y,obj_player.x,obj_player.y) > 135 && point_direction(x,y,obj_player.x,obj_player.y) < 225
		{
			sprite_index = spr_enemy_down;
			move_towards_point(obj_player.x,obj_player.y,vel_movimiento+ .25);
		}
		if point_direction(x,y,obj_player.x,obj_player.y) > 225 && point_direction(x,y,obj_player.x,obj_player.y) < 315
		{
			sprite_index = spr_enemy_left;
			move_towards_point(obj_player.x,obj_player.y,vel_movimiento+ .25);
		}
	
		if point_direction(x,y,obj_player.x,obj_player.y) > 315 && point_direction(x,y,obj_player.x,obj_player.y) < 45
		{
			sprite_index = spr_enemy_left;
			move_towards_point(obj_player.x,obj_player.y,vel_movimiento+ .25);
		}
		*/
}
	

/*
if(x>obj_player.x && y==obj_player.y ){sprite_index = spr_enemy_left}
	
if(x<obj_player.x && y==obj_player.y){c}

if(y>obj_player.y && x==obj_player.x){sprite_index = spr_enemy_up}

if(y<obj_player.y && x==obj_player.x){sprite_index = spr_enemy_down}
*/		
