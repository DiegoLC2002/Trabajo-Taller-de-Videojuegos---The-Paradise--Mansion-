
function scr_ChangeSpr(_x,_y){

	var dx = _x - x;
	var dy = _y - y;
	
	if (dx > 0) {
		sprite_index = spr_enemy_right;
	} else if (dx < 0) {
		sprite_index = spr_enemy_left;
	} else if (dy > 0) {
		sprite_index = spr_enemy_down;
	} else if (dy < 0) {
		sprite_index = spr_enemy_up;
	}
}