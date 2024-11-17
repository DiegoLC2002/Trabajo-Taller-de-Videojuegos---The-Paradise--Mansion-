// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function is_valid_point(check_x, check_y) {
    return !place_meeting(check_x, check_y, obj_collision);
}