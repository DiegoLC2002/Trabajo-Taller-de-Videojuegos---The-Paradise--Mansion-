function scr_MoveTo(xTo, yTo){
	
	if (place_free(x+vel_movimiento*xTo, y+vel_movimiento*yTo)) {
		hspeed = vel_movimiento * xTo;
		vspeed = vel_movimiento * yTo;

	}
	scr_ChangeSpr(x+vel_movimiento*xTo, y+vel_movimiento*yTo);
}