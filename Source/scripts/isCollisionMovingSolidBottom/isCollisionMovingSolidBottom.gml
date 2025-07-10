function isCollisionMovingSolidBottom(_distance) {
	/*
	An object can only use this script after calling "setCollisionBounds."
	0: Number of pixels below the collision rectangle to check for a collision
	with a moving solid.
	*/
	calculateCollisionBounds();
	return collision_line(round(lb),round(bb+_distance-1),round(rb-1),round(bb+_distance-1),oMovingSolid,1,1)>0;



}
