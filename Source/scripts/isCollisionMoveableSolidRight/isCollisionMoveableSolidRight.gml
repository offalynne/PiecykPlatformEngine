function isCollisionMoveableSolidRight(_distance) {
	/*
	An object can only use this script after calling "setCollisionBounds."
	0: Number of pixels right of the collision rectangle to check for a collision
	with a moveable solid object.
	*/
	calculateCollisionBounds();
	if (collision_line(round(rb+_distance-1),round(tb),round(rb+_distance-1),round(bb-1),oMoveableSolid,1,1)>0) {
	  return 1;
	}
	return 0;



}
