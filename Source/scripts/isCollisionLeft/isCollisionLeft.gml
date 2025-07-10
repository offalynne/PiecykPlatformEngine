function isCollisionLeft(_distance) {
	/*
	An object can only use this script after calling "setCollisionBounds."
	0: Number of pixels left of the collision rectangle to check for a collision
	with a solid object.
	*/
	calculateCollisionBounds();
	if (collision_line(round(lb-_distance),round(tb),round(lb-_distance),round(bb-1),oSolid,1,1)>0) {
	  return 1;
	}
	return 0;



}
