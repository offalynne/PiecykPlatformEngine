function isCollisionWaterTop(_distance) {
	/*
	An object can only use this script after calling "setCollisionBounds."
	0: Number of pixels above the collision rectangle to check for a collision
	with an "oWater".
	*/
	calculateCollisionBounds();
	return collision_line(round(lb),round(tb-_distance),round(rb-1),round(tb-_distance),oWater,1,1)>0;



}
