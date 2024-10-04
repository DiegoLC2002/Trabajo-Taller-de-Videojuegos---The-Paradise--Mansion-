
var _p = path[pathIndex];
var xTo = _p[0];
var yTo = _p[1];

scr_MoveTo(xTo,yTo);

pathIndex += 1;

if(pathIndex >= array_length(path)){
	
	pathIndex = 0;	
}

alarm[0] = room_speed * 1;
